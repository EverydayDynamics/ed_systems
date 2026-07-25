# EverydayDynamics systems model — reqvire shortcuts.
# Reqvire runs via npx (no install). Override the version by exporting REQ.
REQ ?= npx -y @reqvire-org/reqvire@latest --workspace $(CURDIR)

.PHONY: validate lint format format-fix coverage traces model serve mcp check

validate:      ## Validate model structure and relations
	$(REQ) validate

lint:          ## Report model-quality issues
	$(REQ) lint

format:        ## Preview formatting/normalization changes
	$(REQ) format

format-fix:    ## Apply formatting/normalization
	$(REQ) format --fix

coverage:      ## Verification & implementation coverage report
	$(REQ) coverage

traces:        ## Verification traces up to capabilities
	$(REQ) traces

model:         ## Print the model with nested relations
	$(REQ) model

serve:         ## Browse the model in the Explorer UI (http://127.0.0.1:8080)
	$(REQ) serve

mcp:           ## Start the reqvire MCP server for AI agents (http://127.0.0.1:8081/mcp)
	$(REQ) mcp --enable-mutations

check: validate lint  ## Run before committing
