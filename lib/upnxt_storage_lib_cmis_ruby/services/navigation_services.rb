require_relative 'services'

module UpnxtStorageLibCmisRuby
  module Services
    class NavigationServices
      include Services

      def get_children(repository_id, folder_id, filter, order_by, include_allowable_actions, include_relationships, rendition_filter, include_path_segment, max_items, skip_count, extension={})
      end

      def get_descendants(repository_id, folder_id, depth, filter, include_allowable_actions, include_relationships, rendition_filter, include_path_segment, extension={})
      end

      def get_folder_tree(repository_id, folder_id, depth, filter, include_allowable_actions, include_relationships, rendition_filter, include_path_segment, extension={})
      end

      def get_object_parents(repository_id, object_id, filter, include_allowable_actions, include_relationships, rendition_filter, include_relative_path_segment, extension={})
      end

      def get_folder_parent(repository_id, folder_id, filter, extension={})
      end

      def get_checked_out_docs(repository_id, folder_id, filter, order_by, include_allowable_actions, include_relationships, rendition_filter, max_items, skip_count, extension={})
      end
    end
  end
end