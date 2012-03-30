define ["cs!base/models"], (basemodels) ->

    class ContentModel extends basemodels.LazyModel
        
        apiCollection: "content"
        
        relations: ->
            sections:
                collection: SectionCollection
                includeInJSON: true
        
    class ContentCollection extends basemodels.LazyCollection
        
        model: ContentModel

    class SectionModel extends basemodels.LazyModel

        defaults:
            width: 16

        relations: ->
            items:
                collection: ItemCollection
                includeInJSON: true
        
    class SectionCollection extends basemodels.LazyCollection
        
        model: SectionModel

    class ItemModel extends Backbone.Model

    class ItemCollection extends Backbone.Collection
        model: ItemModel


    ContentModel: ContentModel
    ContentCollection: ContentCollection