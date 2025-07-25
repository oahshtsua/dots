return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			{
				"igorlfs/nvim-dap-view",
				opts = {
					winbar = {
						controls = {
							enabled = true,
						},
					},
					windows = {
						height = 0.4,
					},
				},
			},
			"rcarriga/nvim-dap-ui",
			"mfussenegger/nvim-dap-python",
		},
		config = function()
			local dap = require("dap")
			local dv = require("dap-view")
			local dap_python = require("dap-python")

			dap_python.setup("python3")

			vim.fn.sign_define("DapBreakpoint", {
				text = "B",
				texthl = "DiagnosticSignError",
				linehl = "",
				numhl = "",
			})

			vim.fn.sign_define("DapBreakpointRejected", {
				text = "✕",
				texthl = "DiagnosticSignError",
				linehl = "",
				numhl = "",
			})

			vim.fn.sign_define("DapStopped", {
				text = "→",
				texthl = "DiagnosticSignWarn",
				linehl = "Visual",
				numhl = "DiagnosticSignWarn",
			})

			-- Automatically open/close DAP UI
			dap.listeners.before.attach["dap-view-config"] = function()
				dv.open()
			end

			dap.listeners.before.launch["dap-view-config"] = function()
				dv.open()
			end

			dap.listeners.before.event_terminated["dap-view-config"] = function()
				dv.close()
			end

			dap.listeners.before.event_exited["dap-view-config"] = function()
				dv.close()
			end

			local opts = { noremap = true, silent = true }

			-- Toggle breakpoint
			vim.keymap.set("n", "<leader>db", function()
				dap.toggle_breakpoint()
			end, opts)

			-- Continue / Start
			vim.keymap.set("n", "<leader>dc", function()
				dap.continue()
			end, opts)

			-- Step Over
			vim.keymap.set("n", "<leader>do", function()
				dap.step_over()
			end, opts)

			-- Step Into
			vim.keymap.set("n", "<leader>di", function()
				dap.step_into()
			end, opts)

			-- Step Out
			vim.keymap.set("n", "<leader>dO", function()
				dap.step_out()
			end, opts)

			-- Keymap to terminate debugging
			vim.keymap.set("n", "<leader>dq", function()
				dap.terminate()
			end, opts)

			-- Toggle DAP UI
			vim.keymap.set("n", "<leader>du", function()
				dv.toggle()
			end, opts)
		end,
	},
}
