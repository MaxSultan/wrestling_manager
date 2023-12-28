# What is an association in rails and how do i create one in a generator?

https://stackoverflow.com/questions/58401309/how-do-i-specific-belongs-to-and-has-many-relationships-when-generating-new-mode

The arguments for the model generators are attributes of the model. blog_id is an actual attribute backed by a database column.

has_many is not an attribute. It's a metaprogramming method which adds a posts method to your Blog instances. You need to add it manually to the model.
