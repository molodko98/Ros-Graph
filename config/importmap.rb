# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "apollo-client", to: "https://ga.jspm.io/npm:apollo-client@2.6.10/bundle.umd.js"
pin "react", to: "https://ga.jspm.io/npm:react@18.2.0/index.js"
pin "@wry/equality", to: "https://ga.jspm.io/npm:@wry/equality@0.1.11/lib/equality.js"
pin "apollo-link", to: "https://ga.jspm.io/npm:apollo-link@1.2.14/lib/index.js"
pin "apollo-utilities", to: "https://ga.jspm.io/npm:apollo-utilities@1.3.4/lib/bundle.cjs.js"
pin "fast-json-stable-stringify", to: "https://ga.jspm.io/npm:fast-json-stable-stringify@2.1.0/index.js"
pin "graphql/language/visitor", to: "https://ga.jspm.io/npm:graphql@15.8.0/language/visitor.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.0-beta.24/nodelibs/browser/process-production.js"
pin "symbol-observable", to: "https://ga.jspm.io/npm:symbol-observable@1.2.0/lib/index.js"
pin "ts-invariant", to: "https://ga.jspm.io/npm:ts-invariant@0.4.4/lib/invariant.js"
pin "tslib", to: "https://ga.jspm.io/npm:tslib@1.14.1/tslib.es6.js"
pin "zen-observable", to: "https://ga.jspm.io/npm:zen-observable@0.8.15/index.js"
pin "zen-observable-ts", to: "https://ga.jspm.io/npm:zen-observable-ts@0.8.21/lib/index.js"
