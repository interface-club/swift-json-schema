import JSONSchema

@attached(peer) public macro ObjectOptions(
  required: [String]? = nil,
  propertyNames: StringSchemaOptions? = nil,
  additionalProperties: SchemaControlOption? = nil,
  minProperties: Int? = nil,
  maxProperties: Int? = nil
) = #externalMacro(module: "JSONSchemaMacro", type: "ObjectOptionsMacro")
