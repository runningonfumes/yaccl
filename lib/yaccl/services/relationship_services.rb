module YACCL
  module RelationshipServices
    def get_object_relationships(repository_id, object_id, include_sub_relationship_types, relationship_direction, type_id, filter, include_allowable_actions, max_items, skip_count, succinct=false)
      required = {succinct: succinct,
                  cmisselector: 'relationships',
                  repositoryId: repository_id,
                  objectId: object_id}
      optional = {includeSubRelationshipTypes: include_sub_relationship_types,
                  relationshipDirection: relationship_direction,
                  typeId: type_id,
                  filter: filter,
                  includeAllowableActions: include_allowable_actions,
                  maxItems: max_items,
                  skipCount: skip_count}
      perform_request(required, optional)
    end
  end
end
