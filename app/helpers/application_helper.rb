module ApplicationHelper
    def alphebetize(collection)
        case when collection.first.class == Movie
          collection.sort_by { |m| m.title }
        else
          collection.sort_by { |m| m.name }
        end
    end
end
