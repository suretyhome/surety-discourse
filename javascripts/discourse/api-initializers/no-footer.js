import { apiInitializer } from "discourse/lib/api";

// Hide the footer on infinite scroll pages (home, latest and category lists),
// where it would flash into view as more topics load.
export default apiInitializer((api) => {
  api.onPageChange((url) => {
    const isInfiniteScroll =
      url === "/" ||
      url === "/latest" ||
      url.indexOf("?") === 1 ||
      /\/c\//.test(url);

    document.body.classList.toggle("no-footer", isInfiniteScroll);
  });
});
