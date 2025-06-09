import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  api.onPageChange(() => {
    // Select ALL tbody elements inside .category-list-item
    const allCategoryItems = document.querySelectorAll(
      ".category-list-item table.topic-list tbody"
    );

    allCategoryItems.forEach((tbody) => {
      const mainLink = tbody.querySelector(".main-link");
      const logo = mainLink?.querySelector(".category-logo");
      const title = mainLink?.querySelector("h3");

      if (mainLink && logo && title) {
        // Move logo above title
        mainLink.insertBefore(logo, title);
      }
    });
  });
});
