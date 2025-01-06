# Contributing to Talk Nerdy To Me IaC Newsletter

We love your input! We want to make contributing to our IaC newsletter code repository as easy and transparent as possible.

## How to Contribute

1. Fork the repository
2. Create a branch (`git checkout -b feature/amazing-example`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some amazing example'`)
5. Push to the branch (`git push origin feature/amazing-example`)
6. Open a Pull Request

## Code Examples Guidelines

1. **Structure**
   - Organize code in appropriate monthly directory
   - Include clear README with setup instructions
   - Add comments explaining complex configurations

2. **Quality Standards**
   - Follow Terraform best practices
   - Include proper variable declarations
   - Use consistent naming conventions
   - Add appropriate tags and metadata

3. **Documentation**
   - Clear description of what the code does
   - Prerequisites and dependencies
   - Step-by-step setup instructions
   - Expected outcomes

## Pull Request Process

1. Update the README.md with details of changes
2. Update the examples index if adding new examples
3. Ensure all code is properly formatted (`terraform fmt`)
4. Reference relevant issues in PR description

## Style Guidelines

### Terraform
```hcl
# Resource naming
resource "azurerm_resource_group" "example" {
  name     = "rg-${var.environment}-${var.location}"
  location = var.location

  tags = local.common_tags
}

# Variable declarations
variable "environment" {
  type        = string
  description = "Environment name (dev, staging, prod)"
}

# Outputs
output "resource_group_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.example.id
}
```

### Documentation
```markdown
# Example Title

Brief description of what this example demonstrates.

## Prerequisites
- Required tools
- Required permissions

## Usage
Step-by-step instructions...

## Expected Outcome
What to expect when running the example...
```

## Community Guidelines

- Be respectful and constructive
- Help others learn and grow
- Share knowledge and experiences
- Provide feedback thoughtfully

## Questions?

Feel free to open an issue for:
- Clarifications
- Feature requests
- Bug reports
- General feedback

Thank you for contributing!
