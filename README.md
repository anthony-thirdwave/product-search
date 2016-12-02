# Product Search application
This is an application to search for products.

## TODO
- [ ] Build out Product, User, Branch, Company models
- [ ] Create Proper Associations between each of the models
- [ ] Implement ElasticSearch / Searchkick
- [ ] Begin to filter results based on search queries.
- [ ] Develop Front end.


### Notes
Inside your views, use the 'simple_form_for' with one of the Bootstrap form
 classes, ```.form-horizontal``` or ```.form-inline```, as the following:
 
   ```
   = simple_form_for(@user, html: { class: 'form-horizontal' }) do |form|
   ```
