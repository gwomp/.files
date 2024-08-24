return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require('telescope').setup({})

            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>pws', function()
                local word = vim.fn.expand("<cword>")
                builtin.grep_string({ search = word })
            end)
            vim.keymap.set('n', '<leader>pWs', function()
                local word = vim.fn.expand("<cWORD>")
                builtin.grep_string({ search = word })
            end)
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end)
            vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

            -- Set key bindings for Telescope
            vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
        end
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
        config = function()
            require('telescope').setup {
                extensions = {
                    fzf = {
                        fuzzy = true,                   -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true,    -- override the file sorter
                        case_mode = "smart_case",       -- or "ignore_case" or "respect_case", the default case_mode is "smart_case"
                    }
                }
            }

            require('telescope').load_extension('fzf')
        end
    },
    {
        "nvim-telescope/telescope-fzy-native.nvim",
        config = function()
            require('telescope').setup {
                extensions = {
                    fzy_native = {
                        override_generic_sorter = false,
                        override_file_sorter = true,
                    }
                }
            }

            require('telescope').load_extension('fzy_native')
        end
    },
    {
        "natecraddock/telescope-zf-native.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["zf-native"] = {
                        -- options for sorting file-like items
                        file = {
                            enable = true,            -- override default telescope file sorter
                            highlight_results = true, -- highlight matching text in results
                            -- match_filename = true, -- enable zf filename match priority
                            initial_sort = nil,       -- optional function to define a sort order when the query is empty
                            smart_case = true,        -- set to false to enable case sensitive matching
                        },

                        -- options for sorting all other items
                        generic = {
                            enable = true,            -- override default telescope generic item sorter
                            highlight_results = true, -- highlight matching text in results
                            match_filename = false,   -- disable zf filename match priority
                            initial_sort = nil,       -- optional function to define a sort order when the query is empty
                            smart_case = true,        -- set to false to enable case sensitive matching
                        },
                    }
                },
            })

            require("telescope").load_extension("zf-native")
        end
    }
}
