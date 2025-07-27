-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.40 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para restaurant_db
CREATE DATABASE IF NOT EXISTS `restaurant_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant_db`;

-- Volcando estructura para tabla restaurant_db.category
CREATE TABLE IF NOT EXISTS `category` (
  `id_category` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dishes_number` int NOT NULL,
  PRIMARY KEY (`id_category`),
  UNIQUE KEY `category_name_UNIQUE` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla restaurant_db.category: ~10 rows (aproximadamente)
INSERT INTO `category` (`id_category`, `category_name`, `dishes_number`) VALUES
	(1, 'Bread', 1),
	(2, 'Desserts', 2),
	(3, 'Drinks', 0),
	(4, 'Fruites', 1),
	(5, 'Meat', 3),
	(6, 'Pasta', 2),
	(7, 'Salads', 2),
	(8, 'Seafood', 1),
	(9, 'Snacks', 1),
	(10, 'Soups', 2);

-- Volcando estructura para tabla restaurant_db.dish
CREATE TABLE IF NOT EXISTS `dish` (
  `id_dish` bigint NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `base_portion` int NOT NULL,
  `id_category` bigint NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_dish`),
  UNIQUE KEY `name_UNIQUE` (`dish_name`) USING BTREE,
  KEY `id_category_idx` (`id_category`),
  CONSTRAINT `FK_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla restaurant_db.dish: ~15 rows (aproximadamente)
INSERT INTO `dish` (`id_dish`, `dish_name`, `base_portion`, `id_category`, `image_path`, `description`, `price`) VALUES
	(1, 'Stuffed Mushrooms', 6, 9, '1.jpg', 'These low-carb mushrooms are easy to make and cook in under 10 minutes in your air fryer. They make the perfect game-day snack, but also impress as a first course when having friends over for an elegant dinner.', 7.25),
	(2, 'Homemade Flour Tortillas', 24, 1, '2.jpeg', 'Traditional flour tortillas - homemade and much better than store bought. Do not substitute vegetable oil or shortening for the lard.', 2.20),
	(3, 'Chocolate Puddino', 6, 2, '3.jpg', 'Perfect for Valentine\'s Day, this rich and delicious chocolate pudding is made with a classic Italian method that they call "budino."" The pudding has a glorious texture--firm enough to stay on the spoon and hold its shape, but at the same time, soft, smooth, and silky. It\'s a perfect balance between intense chocolate flavor, with just the right amount of sweetness, topped with a soft whipped cream topping that elevates it to a whole new level of amazingness!"', 7.60),
	(4, 'The Best Lemon Bars', 36, 2, '4.jpeg', 'Tart, rich and perfection, all rolled into one! Wow your friends with this simple recipe. Hint: No Substitutions!', 7.00),
	(5, 'Maple-Pear Tarte Tatin', 8, 4, '5.jpeg', 'Pears poached in a maple caramel sauce then baked with a traditional puff pastry crust, a simple yet elegant dessert. Serve warm with vanilla ice cream and enjoy!', 15.30),
	(6, 'Make-Ahead Freezer Chicken Parmesan', 4, 5, '6.jpeg', 'My family loves chicken Parm but making it from scratch on a busy school night is next to impossible. The good news is the chicken can be made ahead and frozen along with the right portion of sauce and cheese for a quick weeknight meal. Serve with pasta and Caesar salad.', 8.70),
	(7, 'Broiled Paprika and Lemon-Pepper Chicken Breasts', 2, 5, '7.jpeg', 'The great blend of spices on these broiled chicken breasts has a wonderful flavor and pairs well with many vegetable side dishes.', 9.20),
	(8, 'Easy Meatloaf', 8, 5, '8.jpeg', 'This is a very easy and no fail recipe for meatloaf. It won\'t take long to make at all, and it\'s quite good!', 13.30),
	(9, 'Scallops Mascarpone', 6, 6, '9.jpeg', 'A light seafood dishes that pleases the taste buds and the eyes!', 44.40),
	(10, 'Lighter Chicken Fettuccine Alfredo', 6, 6, '10.jpeg', 'This version of chicken fettuccine alfredo is lightened by substituting some of the heavy cream with chicken broth.', 24.70),
	(11, 'Roasted Beet Salad', 4, 7, '11.jpeg', 'Roasted beets with balsamic vinegar dressing.', 4.60),
	(12, 'All Kale Caesar', 4, 7, '12.jpeg', 'This kale salad recipe is very quick and simple. Pour remaining dressing into a container, cover, and refrigerate up to 2 weeks.', 13.00),
	(13, 'Easy Bake Fish', 4, 8, '13.jpeg', 'Easy recipe for people who spent so much on the fish they couldn\'t buy the sauce!', 21.70),
	(14, 'Asparagus, Lemon, and Mint Soup', 2, 10, '14.jpeg', 'This soup is easy to make. Asparagus has a strong flavor by itself, so I chose to add a few mint leaves and lemon zest to give it a wonderfully fresh aroma!', 10.40),
	(15, 'Avocado Soup with Chicken and Lime', 4, 10, '15.jpg', 'Thin strips of chicken breast are simmered in broth with jalapenos, onion, garlic and lime and then combined with avocado and topped with crisp corn tortilla strips in this spicy soup.', 19.00);

-- Volcando estructura para tabla restaurant_db.ingredient
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id_ingredient` bigint NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `measurement_unit` varchar(45) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id_ingredient`),
  UNIQUE KEY `name_UNIQUE` (`ingredient_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla restaurant_db.ingredient: ~70 rows (aproximadamente)
INSERT INTO `ingredient` (`id_ingredient`, `ingredient_name`, `price`, `currency`, `measurement_unit`, `stock`) VALUES
	(1, 'Anchovy fillets', 8.00, 'cents', 'piece (pcs)', 25),
	(2, 'Asparagus', 2.98, '$', 'bunch', 9),
	(3, 'Avocado', 48.00, 'cents', 'piece (pcs)', 4),
	(4, 'Baking powder', 2.00, 'cents', 'teaspoon', 24),
	(5, 'Balsamic vinegar', 13.00, 'cents', 'tablespoon', 15),
	(6, 'Beef', 3.97, '$', 'pound (lb)', 24),
	(7, 'Beet', 40.00, 'cents', 'piece (pcs)', 5),
	(8, 'Bread crumbs', 44.00, 'cents', 'cup', 28),
	(9, 'Brown sugar', 1.00, 'cents', 'tablespoon', 12),
	(10, 'Butter', 12.00, 'cents', 'tablespoon', 18),
	(11, 'Button mushrooms', 16.00, 'cents', 'ounce (oz)', 28),
	(12, 'Cayenne pepper', 2.00, 'cents', 'pinch', 24),
	(13, 'Cheddar cheese', 33.00, 'cents', 'ounce (oz)', 14),
	(14, 'Chicken breast', 3.24, '$', 'pound (lb)', 24),
	(15, 'Chicken stock', 56.00, 'cents', 'cup', 27),
	(16, 'Corn tortillas', 6.00, 'cents', 'piece (pcs)', 8),
	(17, 'Cream cheese', 20.00, 'cents', 'ounce (oz)', 12),
	(18, 'Crouton', 1.20, '$', 'cup', 13),
	(19, 'Cucumber', 70.00, 'cents', 'piece (pcs)', 20),
	(20, 'Dark chocolate', 17.00, 'cents', 'tablespoon', 22),
	(21, 'Dark chocolate chips', 25.00, 'cents', 'ounce (oz)', 10),
	(22, 'Dijon mustard', 3.00, 'cents', 'teaspoon', 1),
	(23, 'Egg', 10.00, 'cents', 'piece (pcs)', 8),
	(24, 'Egg yolk', 10.00, 'cents', 'piece (pcs)', 17),
	(25, 'Fettuccine', 3.40, '$', 'pound (lb)', 2),
	(26, 'Flour', 25.00, 'cents', 'cup', 25),
	(27, 'Fresh cilantro', 15.84, '$', 'cup', 30),
	(28, 'Fresh mint', 99.00, 'cents', 'tablespoon', 15),
	(29, 'Garlic', 42.00, 'cents', 'bulb', 14),
	(30, 'Garlic powder', 8.00, 'cents', 'teaspoon', 1),
	(31, 'Ground cinnamon', 7.00, 'cents', 'teaspoon', 25),
	(32, 'Ground nutmeg', 4.00, 'cents', 'pinch', 23),
	(33, 'Heavy cream', 72.00, 'cents', 'cup', 19),
	(34, 'Honey', 14.00, 'cents', 'tablespoon', 16),
	(35, 'Italian seasoning', 19.00, 'cents', 'teaspoon', 19),
	(36, 'Jalapeno peppers', 5.00, 'cents', 'piece (pcs)', 2),
	(37, 'Kale leaves', 72.00, 'cents', 'cup', 2),
	(38, 'Ketchup', 64.00, 'cents', 'cup', 8),
	(39, 'Lard', 4.00, 'cents', 'teaspoon', 17),
	(40, 'Lemon', 48.00, 'cents', 'piece (pcs)', 10),
	(41, 'Lemon juice', 1.04, '$', 'cup', 18),
	(42, 'Lemon zest', 11.00, 'cents', 'teaspoon', 25),
	(43, 'Lemon-pepper seasoning', 11.00, 'cents', 'tablespoon', 26),
	(44, 'Lime juice', 1.28, '$', 'cup', 14),
	(45, 'Maple syrup', 3.00, 'cents', 'tablespoon', 23),
	(46, 'Mascarpone cheese', 50.00, 'cents', 'ounce (oz)', 18),
	(47, 'Mozzarella cheese', 96.00, 'cents', 'cup', 17),
	(48, 'Olive oil', 13.00, 'cents', 'tablespoon', 23),
	(49, 'Onion', 78.00, 'cents', 'piece (pcs)', 21),
	(50, 'Onion powder', 9.00, 'cents', 'teaspoon', 11),
	(51, 'Paprika', 18.00, 'cents', 'teaspoon', 7),
	(52, 'Parmesan cheese', 12.00, 'cents', 'tablespoon', 29),
	(53, 'Parmigiano-Reggiano cheese', 2.40, '$', 'cup', 9),
	(54, 'Parsley', 3.00, 'cents', 'tablespoon', 20),
	(55, 'Pear', 71.00, 'cents', 'piece (pcs)', 11),
	(56, 'Pepper', 1.00, 'cents', 'pinch', 29),
	(57, 'Prepared mustard', 9.00, 'cents', 'tablespoon', 12),
	(58, 'Puff pastry', 33.00, 'cents', 'ounce (oz)', 23),
	(59, 'Salmon steak', 2.98, '$', 'piece (pcs)', 14),
	(60, 'Salt', 1.00, 'cents', 'teaspoon', 26),
	(61, 'Scallion', 10.00, 'cents', 'piece (pcs)', 27),
	(62, 'Scallop', 14.98, '$', 'pound (lb)', 6),
	(63, 'Seashell pasta', 8.00, 'cents', 'ounce (oz)', 14),
	(64, 'Shallot', 70.00, 'cents', 'piece (pcs)', 30),
	(65, 'Tomato', 50.00, 'cents', 'piece (pcs)', 24),
	(66, 'Tomato sauce', 6.00, 'cents', 'ounce (oz)', 4),
	(67, 'Vanilla extract', 28.00, 'cents', 'teaspoon', 24),
	(68, 'Water', 1.00, 'cents', 'cup', 18),
	(69, 'White sugar', 13.00, 'cents', 'cup', 10),
	(70, 'Whole milk', 16.00, 'cents', 'cup', 4);

-- Volcando estructura para tabla restaurant_db.ingredient_dish
CREATE TABLE IF NOT EXISTS `ingredient_dish` (
  `id_ing_dish` bigint NOT NULL AUTO_INCREMENT,
  `id_dish` bigint NOT NULL,
  `ingredient_name` varchar(50) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `measure_unit` varchar(20) NOT NULL,
  PRIMARY KEY (`id_ing_dish`),
  KEY `FK_dish` (`id_dish`),
  CONSTRAINT `FK_dish` FOREIGN KEY (`id_dish`) REFERENCES `dish` (`id_dish`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla restaurant_db.ingredient_dish: ~129 rows (aproximadamente)
INSERT INTO `ingredient_dish` (`id_ing_dish`, `id_dish`, `ingredient_name`, `quantity`, `measure_unit`) VALUES
	(1, 1, 'Button mushrooms', 16.00, 'oz'),
	(2, 1, 'Scallion', 2.00, 'pcs'),
	(3, 1, 'Cream cheese', 4.00, 'oz'),
	(4, 1, 'Cheddar cheese', 2.00, 'oz'),
	(5, 1, 'Paprika', 0.25, 'teaspoon'),
	(6, 1, 'Salt', 0.20, 'teaspoon'),
	(7, 2, 'Salt', 1.00, 'teaspoon'),
	(8, 2, 'Flour', 4.00, 'cup'),
	(9, 2, 'Baking powder', 2.00, 'teaspoon'),
	(10, 2, 'Lard', 6.00, 'teaspoon'),
	(11, 2, 'Water', 1.50, 'cup'),
	(12, 3, 'Salt', 0.20, 'teaspoon'),
	(13, 3, 'Dark chocolate chips', 8.00, 'oz'),
	(14, 3, 'Cayenne pepper', 1.00, 'pinch'),
	(15, 3, 'Egg', 6.00, 'pcs'),
	(16, 3, 'White sugar', 0.30, 'cup'),
	(17, 3, 'Whole milk', 1.00, 'cup'),
	(18, 3, 'Heavy cream', 1.25, 'cup'),
	(19, 3, 'Vanilla extract', 0.25, 'teaspoon'),
	(20, 3, 'Butter', 1.00, 'tablespoon'),
	(21, 3, 'Heavy cream', 0.25, 'cup'),
	(22, 3, 'Vanilla extract', 0.10, 'teaspoon'),
	(23, 3, 'Dark chocolate', 2.00, 'tablespoon'),
	(24, 4, 'Flour', 2.00, 'cup'),
	(25, 4, 'White sugar', 0.50, 'cup'),
	(26, 4, 'Butter', 16.00, 'tablespoon'),
	(27, 4, 'Flour', 0.25, 'cup'),
	(28, 4, 'Egg', 4.00, 'pcs'),
	(29, 4, 'White sugar', 1.50, 'cup'),
	(30, 4, 'Lemon', 2.00, 'pcs'),
	(31, 5, 'Puff pastry', 17.30, 'ounce'),
	(32, 5, 'Butter', 2.00, 'tablespoon'),
	(33, 5, 'Brown sugar', 5.00, 'tablespoon'),
	(34, 5, 'Ground cinnamon', 0.25, 'teaspoon'),
	(35, 5, 'Ground nutmeg', 1.00, 'pinch'),
	(36, 5, 'Maple syrup', 4.00, 'tablespoon'),
	(37, 5, 'Pear', 4.00, 'pcs'),
	(38, 6, 'Chicken breast', 1.00, 'pound'),
	(39, 6, 'Egg', 1.00, 'piece'),
	(40, 6, 'Bread crumbs', 0.33, 'cup'),
	(41, 6, 'Parmesan cheese', 2.00, 'tablespoon'),
	(42, 6, 'Italian seasoning', 0.75, 'teaspoon'),
	(43, 6, 'Garlic powder', 0.50, 'teaspoon'),
	(44, 6, 'Tomato sauce', 8.00, 'ounce'),
	(45, 6, 'Mozzarella cheese', 0.75, 'cup'),
	(46, 7, 'Olive oil', 0.50, 'tablespoon'),
	(47, 7, 'Paprika', 6.00, 'teaspoon'),
	(48, 7, 'Salt', 3.00, 'teaspoon'),
	(49, 7, 'Chicken breast', 1.00, 'pound'),
	(50, 7, 'Olive oil', 2.00, 'tablespoon'),
	(51, 7, 'Lemon-pepper seasoning', 1.00, 'tablespoon'),
	(52, 7, 'Garlic', 0.50, 'bulb'),
	(53, 7, 'Onion', 0.50, 'pcs'),
	(54, 8, 'Egg', 1.00, 'piece'),
	(55, 8, 'Whole milk', 1.00, 'cup'),
	(56, 8, 'Bread crumbs', 1.00, 'cup'),
	(57, 8, 'Onion', 1.00, 'piece'),
	(58, 8, 'Beef', 1.50, 'lb'),
	(59, 8, 'Salt', 0.10, 'teaspoon'),
	(60, 8, 'Pepper', 0.50, 'pinch'),
	(61, 8, 'Brown sugar', 2.00, 'tablespoon'),
	(62, 8, 'Prepared mustard', 2.00, 'tablespoon'),
	(63, 8, 'Ketchup', 0.33, 'cup'),
	(64, 9, 'Seashell pasta', 16.00, 'oz'),
	(65, 9, 'Butter', 6.00, 'tablespoon'),
	(66, 9, 'Olive oil', 1.00, 'tablespoon'),
	(67, 9, 'Garlic', 0.20, 'bulb'),
	(68, 9, 'Parsley', 1.00, 'tablespoon'),
	(69, 9, 'Button mushrooms', 10.00, 'oz'),
	(70, 9, 'Salt', 0.10, 'teaspoon'),
	(71, 9, 'Pepper', 0.50, 'pinch'),
	(72, 9, 'Asparagus', 1.00, 'bunch'),
	(73, 9, 'Onion powder', 0.50, 'teaspoon'),
	(74, 9, 'Scallop', 1.00, 'pound'),
	(75, 9, 'Whole milk', 0.25, 'cup'),
	(76, 9, 'Butter', 2.00, 'tablespoon'),
	(77, 9, 'Mascarpone cheese', 8.00, 'oz'),
	(78, 10, 'Chicken breast', 1.00, 'lb'),
	(79, 10, 'Chicken stock', 2.00, 'cup'),
	(80, 10, 'Heavy cream', 2.00, 'cup'),
	(81, 10, 'Garlic', 0.70, 'bulb'),
	(82, 10, 'Pepper', 0.50, 'pinch'),
	(83, 10, 'Egg', 2.00, 'pcs'),
	(84, 10, 'Salt', 0.10, 'teaspoon'),
	(85, 10, 'Fettuccine', 1.00, 'pound'),
	(86, 10, 'Parsley', 1.00, 'tablespoon'),
	(87, 10, 'Parmigiano-Reggiano cheese', 2.00, 'cup'),
	(88, 11, 'Beet', 6.00, 'pcs'),
	(89, 11, 'Salt', 0.10, 'teaspoon'),
	(90, 11, 'Maple syrup', 0.70, 'tablespoon'),
	(91, 11, 'Pepper', 0.50, 'pinch'),
	(92, 11, 'Balsamic vinegar', 2.00, 'tablespoon'),
	(93, 12, 'Garlic', 0.30, 'bulb'),
	(94, 12, 'Lemon juice', 0.50, 'cup'),
	(95, 12, 'Anchovy fillets', 2.00, 'pcs'),
	(96, 12, 'Dijon mustard', 0.50, 'teaspoon'),
	(97, 12, 'Salt', 0.25, 'teaspoon'),
	(98, 12, 'Olive oil', 8.00, 'tablespoon'),
	(99, 12, 'Pepper', 0.50, 'pinch'),
	(100, 12, 'Kale leaves', 6.00, 'cup'),
	(101, 12, 'Parmesan cheese', 2.00, 'tablespoon'),
	(102, 12, 'Crouton', 1.00, 'cup'),
	(103, 13, 'Dijon mustard', 9.00, 'teaspoon'),
	(104, 13, 'Honey', 3.00, 'tablespoon'),
	(105, 13, 'Lemon zest', 1.00, 'teaspoon'),
	(106, 13, 'Salmon steak', 4.00, 'pcs'),
	(107, 13, 'Pepper', 4.00, 'pinch'),
	(108, 14, 'Asparagus', 1.00, 'bunch'),
	(109, 14, 'Olive oil', 1.00, 'tablespoon'),
	(110, 14, 'Shallot', 1.00, 'piece'),
	(111, 14, 'Salt', 0.25, 'teaspoon'),
	(112, 14, 'Pepper', 0.50, 'pinch'),
	(113, 14, 'Fresh mint', 1.00, 'tablespoon'),
	(114, 14, 'Chicken stock', 2.00, 'cup'),
	(115, 14, 'Lemon zest', 1.00, 'teaspoon'),
	(116, 14, 'Egg', 1.00, 'piece'),
	(117, 15, 'Corn tortillas', 4.00, 'pcs'),
	(118, 15, 'Olive oil', 1.50, 'tablespoon'),
	(119, 15, 'Garlic', 1.50, 'bulb'),
	(120, 15, 'Onion', 1.00, 'piece'),
	(121, 15, 'Jalapeno peppers', 4.00, 'pcs'),
	(122, 15, 'Chicken breast', 0.50, 'lb'),
	(123, 15, 'Salt', 0.25, 'teaspoon'),
	(124, 15, 'Pepper', 0.50, 'pinch'),
	(125, 15, 'Chicken stock', 4.00, 'cup'),
	(126, 15, 'Lime juice', 0.25, 'cup'),
	(127, 15, 'Tomato', 1.00, 'piece'),
	(128, 15, 'Avocado', 1.00, 'piece'),
	(129, 15, 'Fresh cilantro', 0.25, 'cup');

-- Volcando estructura para tabla restaurant_db.recipe
CREATE TABLE IF NOT EXISTS `recipe` (
  `id_recipe` bigint NOT NULL AUTO_INCREMENT,
  `preparation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `time` int DEFAULT NULL COMMENT 'En minutos',
  `id_dish` bigint DEFAULT NULL,
  PRIMARY KEY (`id_recipe`),
  KEY `FK__dish` (`id_dish`),
  CONSTRAINT `FK__dish` FOREIGN KEY (`id_dish`) REFERENCES `dish` (`id_dish`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla restaurant_db.recipe: ~15 rows (aproximadamente)
INSERT INTO `recipe` (`id_recipe`, `preparation`, `time`, `id_dish`) VALUES
	(1, 'Using a damp cloth, gently clean mushrooms. Remove stems and discard. Mince scallions and separate white and green parts. Combine cream cheese, Cheddar cheese, the white parts from the scallions, paprika, and salt in a small bowl. Stuff filling into the mushrooms, pressing it in to fill the cavity with the back of a small spoon.', 17, 1),
	(2, 'Whisk the flour, salt, and baking powder together in a mixing bowl.Mix in the lard with your fingers until the flour resembles cornmeal. Add the water and mix until the dough comes together, place on a lightly floured surface and knead a few minutes until smooth and elastic.', 18, 2),
	(3, 'Combine chocolate chips, salt, and cayenne in a heat-proof measuring cup, set aside. Separate eggs by cracking one egg into your hand over a bowl. Open your fingers slightly and gently jiggle your hand until the egg white falls into the bowl below. Transfer the yolk to a skillet. Repeat with remaining eggs. Reserve egg whites for another use. Set a fine sieve over the bowl of reserved chocolate. Strain the custard sauce into the chocolate and let sit for 2 minutes. Whisk until chocolate has melted and custard sauce is smooth and shiny, about 2 minutes. Add vanilla and butter, stir until butter has melted, about 1 minute. Add sugar, milk, and cream to egg yolks. Whisk thoroughly, breaking egg yolks first, until well combined. Combine cream and vanilla extract for topping in a metal bowl and whisk until thickened, make sure no peaks form. Spoon cream into the glasses, then tilt and twirl to coat the sides a bit. Garnish with shaved chocolate and serve.', 31, 3),
	(4, 'In a medium bowl, blend together softened butter, 2 cups flour and 1/2 cup sugar. Press into the bottom of an ungreased 9x13 inch pan. Bake for 15 to 20 minutes in the preheated oven, or until firm and golden. In another bowl, whisk together the remaining 1 1/2 cups sugar and 1/4 cup flour. Whisk in the eggs and lemon juice. Pour over the baked crust.', 27, 4),
	(5, 'Roll puff pastry out on a lightly floured surface to 1/4-inch thickness, place in the refrigerator. Melt butter in a 9-inch cast iron skillet over medium heat, stir in brown sugar, cinnamon, and nutmeg and cook and stir until sugar dissolves, about 5 minutes. Stir maple syrup into brown sugar mixture, cook, stirring, until mixture begins to bubble. Remove skillet from heat. Pears need to be peeled, cored, and halved, or more as needed. Place one pear half, cut side up, into the center of skillet. Cut remaining pear halves in half again, arrange pear quarters around the center pear, cut sides up.', 10, 5),
	(6, 'Pound skinless, boneless chicken breasts to 1/2-inch thickness or less. Place beaten egg in a bowl. Combine bread crumbs, grated Parmesan cheese, Italian seasoning, and garlic powder in another bowl. Freeze in a 1-gallon resealable bag with smaller bags of tomato sauce and shredded mozzarella cheese.', 17, 6),
	(7, 'Set an oven rack about 6 inches from the heat source and preheat the oven\'s broiler. Grease a broiler pan with 1/2 tablespoon olive oil. Rinse chicken breasts and pat dry. Brush with remaining olive oil until coated. Sprinkle each piece evenly on both sides with paprika, lemon-pepper, and salt. Place on the prepared broiler pan, sprinkle garlic over top, and sprinkle onions around the base of the chicken, with several smaller pieces on top.', 10, 7),
	(8, 'In a large bowl, combine the ground beef, egg, onion, milk and bread OR cracker crumbs. Season with salt and pepper to taste and place in a lightly greased 9x5-inch loaf pan, or form into a loaf and place in a lightly greased 9x13-inch baking dish. In a separate small bowl, combine the brown sugar, mustard and ketchup. Mix well and pour over the meatloaf.', 16, 8),
	(9, 'Bring a large pot of lightly salted water to a boil. Add pasta, and cook for 7 to 9 minutes, until al dente. Melt 6 tablespoons of butter with the olive oil in a large skillet over medium heat. Mix in the chopped fresh parsley and garlic and cook for a couple of minutes until fragrant. Add the sliced fresh mushrooms and asparagus (trimmed and cut into 1 inch pieces) and season with salt, pepper and onion powder, cook, stirring occasionally until asparagus is tender, about 5 minutes depending on the thickness. Place the rinsed and patted dry scallops in the pan, and cook briefly on each side until lightly browned and the center is cooked through, about 3 minutes per side. Remove from the heat when scallops are just finished. Meanwhile, in a small saucepan, combine the milk, mascarpone cheese and remaining butter. Cook over medium heat, stirring, until sauce is warm and butter is completely melted and blended in.', 29, 9),
	(10, 'Combine chicken breasts and chicken broth in a saucepan over medium-high heat. Bring to a boil, cover, and reduce heat to low, simmer for 5 minutes. Stir garlic, black pepper, and heavy cream into the reduced broth, bring to a simmer and remove from heat. Turn breasts, cover, and simmer another 5 minutes. Remove from heat and let sit with the cover on for 15 minutes. Whisk the warm cream and egg mixture back into the saucepan with the remaining cream mixture. Cook over medium-low heat, whisking constantly, until the mixture almost comes to a simmer and thickens, about 5 minutes. Season with salt and black pepper to taste. Bring a large pot of lightly salted water to a boil. Cook fettuccine in boiling water, stirring occasionally, until nearly cooked through, about 7 minutes. Drain.', 30, 10),
	(11, 'Wrap beets loosely in aluminum foil and place on a rimmed baking sheet. Mix vinegar and maple syrup together, season with salt and pepper. Pour over beets.', 15, 11),
	(12, 'Combine lemon juice, anchovies, garlic, and mustard in a blender or food processor fitted with a steel blade. Process until thoroughly combined. Pour in olive oil very gradually through the feed tube while machine is running, first 1 tablespoon at a time, then gradually increasing the amount. Season with salt and pepper. Stack and bunch the kale leaves together on a cutting board and cut across the stack into skinny slivers. Place the kale, croutons, and Parmesan cheese in the bowl and drizzle with about a 1/4 of the dressing. Toss and taste the salad and add more dressing if desired, then toss again.', 15, 12),
	(13, 'In a small bowl, mix honey, mustard, and lemon juice. Spread the mixture over the salmon steaks. Season with pepper. Arrange in a medium baking dish.', 11, 13),
	(14, 'Cut tips from 6 trimmed asparagus spears, about 1 1/2 inches from the top, reserve for garnish later. Chop the remaining asparagus into chunks. Heat olive oil in a soup pot over medium heat, cook and stir chopped shallot in the hot oil until softened, about 3 minutes. Add chopped asparagus, season with chopped mint, salt, and pepper. Cook until asparagus are slightly tender, about 3 minutes. Pour chicken stock into asparagus mixture, bring to a boil. Reduce heat and simmer until asparagus are tender, 12 to 15 minutes. Stir in lemon zest. Garnish soup with asparagus tips and hard-boiled chopped egg.', 30, 14),
	(15, 'Preheat oven to 400 degrees F (200 degrees C). Arrange julienned tortilla strips on a baking sheet. Heat oil in a large saucepan over medium heat. Cook sliced onion, garlic, and jalapenos in oil until lightly browned, 4 to 5 minutes. Prepare skinless and boneless chicken - cut into thin strips. Stir in chicken, chicken broth, lime juice, tomato (seeded and diced), salt and pepper. Gently simmer until chicken is no longer pink, about 10 minutes. Stir in avocado (peeled, pitted and diced) and chopped cilantro and heat through, 3 to 5 minutes. Adjust seasonings to taste.', 36, 15);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
