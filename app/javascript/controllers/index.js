import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import PlacesController from "./places_controller"
application.register("places", PlacesController)
