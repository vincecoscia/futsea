import ReactOnRails from "react-on-rails";
import Search from "../bundles/Search/components/Search";
import Locations from "../bundles/Locations/components/Locations";
import "babel-polyfill";

// This is how react_on_rails can see the Search in the browser.
ReactOnRails.register({
  Search,
  Locations
});

