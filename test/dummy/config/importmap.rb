# Pin npm packages by running ./bin/importmap

pin "application"

pin "@hotwired/turbo", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true