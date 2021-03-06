module YACCL
  module NavigationServices
    def get_children(repository_id, folder_id, filter, order_by, include_allowable_actions, include_relationships, rendition_filter, include_path_segment, max_items, skip_count, succinct=false)
      required = {succinct: succinct,
                  cmisselector: 'children',
                  repositoryId: repository_id,
                  objectId: folder_id}
      optional = {filter: filter,
                  orderBy: order_by,
                  includeAllowableActions: include_allowable_actions,
                  includeRelationships: include_relationships,
                  renditionFilter: rendition_filter,
                  includePathSegment: include_path_segment,
                  maxItems: max_items,
                  skipCount: skip_count}
      perform_request(required, optional)
    end

    def get_descendants(repository_id, folder_id, depth, filter, include_allowable_actions, include_relationships, rendition_filter, include_path_segment, succinct=false)
      required = {succinct: succinct,
                  cmisselector: 'descendants',
                  repositoryId: repository_id,
                  objectId: folder_id}
      optional = {depth: depth,
                  filter: filter,
                  includeAllowableActions: include_allowable_actions,
                  includeRelationships: include_relationships,
                  renditionFilter: rendition_filter,
                  includePathSegment: include_path_segment}
      perform_request(required, optional)
    end

    def get_folder_tree(repository_id, folder_id, depth, filter, include_allowable_actions, include_relationships, rendition_filter, include_path_segment, succinct=false)
      required = {succinct: succinct,
                  cmisselector: 'folderTree',
                  repositoryId: repository_id,
                  objectId: folder_id}
      optional = {depth: depth,
                  filter: filter,
                  includeAllowableActions: include_allowable_actions,
                  includeRelationships: include_relationships,
                  renditionFilter: rendition_filter,
                  includePathSegment: include_path_segment}
      perform_request(required, optional)
    end

    def get_folder_parent(repository_id, folder_id, filter, succinct=false)
      required = {succinct: succinct,
                  cmisselector: 'parent',
                  repositoryId: repository_id,
                  objectId: folder_id}
      optional = {filter: filter}
      perform_request(required, optional)
    end

    def get_object_parents(repository_id, object_id, filter, include_allowable_actions, include_relationships, rendition_filter, include_relative_path_segment, succinct=false)
      required = {succinct: succinct,
                  cmisselector: 'parents',
                  repositoryId: repository_id,
                  objectId: object_id}
      optional = {filter: filter,
                  includeAllowableActions: include_allowable_actions,
                  includeRelationships: include_relationships,
                  renditionFilter: rendition_filter,
                  includeRelativePathSegment: include_relative_path_segment}
      perform_request(required, optional)
    end

    def get_checked_out_docs(repository_id, folder_id, filter, order_by, include_allowable_actions, include_relationships, rendition_filter, max_items, skip_count, succinct=false)
      required = {succinct: succinct,
                  cmisselector: 'checkedout',
                  repositoryId: repository_id}
      optional =  {objectId: folder_id,
                   filter: filter,
                   orderBy: order_by,
                   includeAllowableActions: include_allowable_actions,
                   includeRelationships: include_relationships,
                   renditionFilter: rendition_filter,
                   maxItems: max_items,
                   skipCount: skip_count}
      perform_request(required, optional)
    end
  end
end
