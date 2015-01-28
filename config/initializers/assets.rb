# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( ckeditor/* )
Rails.application.config.assets.precompile += %w( viewer/documentViewer/libs/pdfjs/pdf.js )
Rails.application.config.assets.precompile += %w( viewer/documentViewer/libs/yepnope.1.5.3-min.js )
Rails.application.config.assets.precompile += %w( viewer/demo/js/jquery.tools.min.js )
Rails.application.config.assets.precompile += %w( ttw-document-viewer.min.js )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
