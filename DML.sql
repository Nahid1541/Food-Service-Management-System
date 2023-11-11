/*

					SQL Project Name : Food Service Management System (FSMS)
							   Trainee Name : Md. Touhidul Islam
						    	  Trainee ID : 1279323      
							   Batch ID : WADA/PNTL-A/56/01 

 --------------------------------------------------------------------------------
Table of Contents: DML
			=> SECTION 01: INSERT DATA USING INSERT INTO KEYWORD
			=> SECTION 02: INSERT DATA THROUGH STORED PROCEDURE
				SUB SECTION => 2.1 : INSERT DATA THROUGH STORED PROCEDURE WITH AN OUTPUT PARAMETER 
				SUB SECTION => 2.2 : INSERT DATA USING SEQUENCE VALUE
			=> SECTION 03: UPDATE DELETE DATA THROUGH STORED PROCEDURE
				SUB SECTION => 3.1 : UPDATE DATA THROUGH STORED PROCEDURE
				SUB SECTION => 3.2 : DELETE DATA THROUGH STORED PROCEDURE
				SUB SECTION => 3.3 : STORED PROCEDURE WITH TRY CATCH AND RAISE ERROR
			=> SECTION 04: INSERT UPDATE DELETE DATA THROUGH VIEW
				SUB SECTION => 4.1 : INSERT DATA through view
				SUB SECTION => 4.2 : UPDATE DATA through view
				SUB SECTION => 4.3 : DELETE DATA through view
			=> SECTION 05: RETREIVE DATA USING FUNCTION(SCALAR, SIMPLE TABLE VALUED, MULTISTATEMENT TABLE VALUED)
			=> SECTION 06: TEST TRIGGER (FOR/AFTER TRIGGER ON TABLE, INSTEAD OF TRIGGER ON TABLE & VIEW)
			=> SECTION 07: QUERY
				SUB SECTION => 7.01 : SELECT FROM TABLE
				SUB SECTION => 7.02 : SELECT FROM VIEW
				SUB SECTION => 7.03 : SELECT INTO
				SUB SECTION => 7.04 : IMPLICIT JOIN WITH WHERE BY CLAUSE, ORDER BY CLAUSE
				SUB SECTION => 7.05 : INNER JOIN WITH GROUP BY CLAUSE
				SUB SECTION => 7.06 : OUTER JOIN
				SUB SECTION => 7.07 : CROSS JOIN
				SUB SECTION => 7.08 : TOP CLAUSE WITH TIES
				SUB SECTION => 7.09 : DISTINCT
				SUB SECTION => 7.10 : COMPARISON, LOGICAL(AND OR NOT) & BETWEEN OPERATOR
				SUB SECTION => 7.11 : LIKE, IN, NOT IN, OPERATOR & IS NULL CLAUSE
				SUB SECTION => 7.12 : OFFSET FETCH
				SUB SECTION => 7.13 : UNION
				SUB SECTION => 7.14 : EXCEPT INTERSECT
				SUB SECTION => 7.15 : AGGREGATE FUNCTIONS
				SUB SECTION => 7.16 : GROUP BY & HAVING CLAUSE
				SUB SECTION => 7.17 : ROLLUP & CUBE OPERATOR
				SUB SECTION => 7.18 : GROUPING SETS
				SUB SECTION => 7.19 : SUB-QUERIES (INNER, CORRELATED)
				SUB SECTION => 7.20 : EXISTS
				SUB SECTION => 7.21 : CTE
				SUB SECTION => 7.22 : MERGE
				SUB SECTION => 7.23 : BUILT IN FUNCTION
				SUB SECTION => 7.24 : CASE
				SUB SECTION => 7.25 : IIF
				SUB SECTION => 7.26 : COALESCE & ISNULL
				SUB SECTION => 7.27 : WHILE
				SUB SECTION => 7.28 : GROPING FUNCTION
				SUB SECTION => 7.29 : RANKING FUNCTION
				SUB SECTION => 7.30 : IF ELSE & PRINT
				SUB SECTION => 7.31 : TRY CATCH
				SUB SECTION => 7.32 : GOTO
				SUB SECTION => 7.33 : sp_helptext
*/


--==============================  SECTION 01  ==============================--
		----------INSERT DATA USING INSERT INTO KEYWORD----------
--==========================================================================--
USE FSMS_DB
GO

INSERT INTO Customer VALUES('Rahim', 'Mia', 'Gazipur', 'Dhaka', 'GP', 'Male', '2022-05-27', 1, 'Bkash', 'rahim0200@gmail.com', '01726457913')
INSERT INTO Customer VALUES('Jamal', 'Hossain', 'Faridpur', 'Dhaka', 'FP', 'Male', '2022-04-13', 1, 'Bkash', 'jamal567@gmail.com', '01724576913')
INSERT INTO Customer VALUES('Juwel', 'Rana', 'Narayanganj', 'Dhaka', 'NG', 'Male', '2022-08-25', 2, 'Nagad', 'juwelrana36@gmail.com', '01926057965')
INSERT INTO Customer VALUES('Mushfiqur', 'Rahim', 'Narsingdi', 'Dhaka', 'NS', 'Male', '2022-10-23', 1, 'Rocket', 'mushfiqurrahim08@gmail.com', '01621457710')
INSERT INTO Customer VALUES('Hasan', 'Mahmud', 'Comilla', 'Chittagong', 'CL', 'Male', '2022-02-22', 1, 'Credit card', 'hasanmahmud@gmail.com', '01723646356')
INSERT INTO Customer VALUES('Miss', 'Sara', 'Coxs Bazar', 'Chittagong', 'CX', 'Female', '2022-03-08', 3, 'Bkash', 'sara3678@gmail.com', '01326458209')
INSERT INTO Customer VALUES('Rahima', 'Begum', 'Rangamati', 'Chittagong', 'RM', 'Female', '2022-05-02', 1, 'Nagad', 'rifatrahman@gmail.com', '01758946377')
INSERT INTO Customer VALUES('Rifatur', 'Rahman', 'Patuakhali', 'Barisal', 'PK', 'Male', '2022-12-17', 1, 'Debit card', 'rifaturrahman02@gmail.com', '01726457413')
INSERT INTO Customer VALUES('Ashik', 'Billa', 'Barguna', 'Barisal', 'BG', 'Male', '2022-09-09', 1, 'Bkash', 'ashikbilla@gmail.com', '01778469871')
INSERT INTO Customer VALUES('Mahmudul', 'Hasan', 'Jessore', 'Khulna', 'JS', 'Male', '2022-01-28', 4, 'Debit card', 'mahmudulhasan@gmail.com', '01754669164')
INSERT INTO Customer VALUES('Abdur', 'Razzak', 'Kushtia', 'Khulna', 'KS', 'Male', '2022-08-08', 1, 'Nagad', 'abdurrazzak@gmail.com', '01826455493')
INSERT INTO Customer VALUES('Fatema', 'Jannat', 'Bagerhat', 'Khulna', 'BH', 'Female', '2022-05-11', 1, 'Bkash', 'fatemajannat@gmail.com', '01726459771')
INSERT INTO Customer VALUES('Masum', 'Kazi', 'Bogra', 'Rajshahi', 'BG', 'Male', '2022-02-05', 2, 'Rocket', 'masumkazi00@gmail.com', '01926454281')
INSERT INTO Customer VALUES('Jahidul', 'Riyad', 'Natore', 'Rajshahi', 'NT', 'Male', '2022-10-19', 1, 'Bkash', 'jahidulriyad@gmail.com', '01706469478')
INSERT INTO Customer VALUES('Nusrat', 'Jahan', 'Dinajpur', 'Rangpur', 'DJ', 'Female', '2022-03-13', 1, 'Bkash', 'nusratjahan@gmail.com', '01416454982')
INSERT INTO Customer VALUES('Jasmin', 'Akhter', 'Kurigram', 'Rangpur', 'KG', 'Female', '2022-08-30', 3, 'Nagad', 'jasminakhter@gmail.com', '01420454726')
INSERT INTO Customer VALUES('Ibrahim', 'Sajib', 'Moulvibazar', 'Sylhet', 'MV', 'Male', '2022-07-16', 3, 'Bkash', 'ibrsajib@gmail.com', '01774501237')
INSERT INTO Customer VALUES('Alomgir', 'Hossein', 'Habiganj', 'Sylhet', 'HB', 'Male', '2022-08-11', 1, 'Rocket', 'alomgirhossein@gmail.com', '01775840655')
INSERT INTO Customer VALUES('Rayhan', 'Firoz', 'Jamalpur', 'Mymensingh', 'JP', 'Male', '2022-06-10', 4, 'Bkash', 'rayhanfiroz@gmail.com', '01748690512')
INSERT INTO Customer VALUES('RN', 'Ruman', 'Sherpur', 'Mymensingh', 'SP', 'Male', '2022-09-20', 2, 'Nagad', 'rnruman325@gmail.com', '01759802668')
INSERT INTO Customer VALUES('Abdul', 'Ahad', 'Kushtia', 'Khulna', 'KS', 'Male', '2022-08-08', 1, 'Nagad', 'abdulahad@gmail.com', '01826457093')
INSERT INTO Customer VALUES('Mariya', 'Mim', 'Kurigram', 'Rangpur', 'DJ', 'Female', '2022-03-16', 1, 'Bkash', 'mariyamim123@gmail.com', '01720459425')
INSERT INTO Customer VALUES('Mehrab', 'Ope', 'Faridpur', 'Dhaka', 'FP', 'Male', '2022-10-17', 2, 'Rocket', 'mehrabope@gmail.com', '01926460782')
INSERT INTO Customer VALUES('Farhad', 'Hosen', 'Natore', 'Rajshahi', 'NT', 'Male', '2022-10-19', 2, 'Bkash', 'farhadhosen@gmail.com', '01724450078')
INSERT INTO Customer VALUES('Nadisha', 'Nupur', 'Faridpur', 'Dhaka', 'FP', 'Female', '2023-04-21', 1, 'Credit card', 'nadishanupur@gmail.com', '01420055472')
INSERT INTO Customer VALUES('Jeni', 'Ara', 'Dinajpur', 'Rangpur', 'KG', 'Female', '2023-07-14', 2, 'Debit card', 'jeniara@gmail.com', '01326052233')
INSERT INTO Customer VALUES('Khairuzzaman', 'Rakib', 'Narayanganj', 'Dhaka', 'NG', 'Male', '2022-07-16', 1, 'Nagad', 'rakib7567@gmail.com', '01745975032')
INSERT INTO Customer VALUES('Anondo', 'Das', 'Sherpur', 'Mymensingh', 'SP', 'Male', '2022-09-09', 1, 'Rocket', 'anondodas@gmail.com', '01775844069')
INSERT INTO Customer VALUES('Jabir', 'Porag', 'Sherpur', 'Mymensingh', 'SP', 'Male', '2023-06-10', 4, 'Bkash', 'jabirporag@gmail.com', '01744746512')
INSERT INTO Customer VALUES('Saha', 'Pranto', 'Gazipur', 'Dhaka', 'GP', 'Male', '2023-02-20', 1, 'Nagad', 'sahapranto21@gmail.com', '01759840054')
GO

-----INSERT INTO FoodCategory Table

INSERT INTO FoodCategory VALUES(1, 'Comfort Classics', 'Timeless and nostalgic dishes that warm the heart and soul, often associated with feelings of home and childhood.')
INSERT INTO FoodCategory VALUES(2, 'Healthful Harvest', 'A selection of nutritious and wholesome foods that celebrate the bounty of fresh produce and natural ingredients.')
INSERT INTO FoodCategory VALUES(3, 'Sizzling Street Food', 'A vibrant assortment of dishes inspired by the bustling street markets of different cultures.')
INSERT INTO FoodCategory VALUES(4, 'Delectable Desserts', ' A delightful category showcasing sweet treats that can range from decadent cakes and pastries to refreshing ice creams and fruity delights, satisfying any sweet tooth.')
INSERT INTO FoodCategory VALUES(5, 'Hearty Home Cooking', 'Homestyle recipes handed down through generations, emphasizing rich flavors, slow-cooked meals, and comfort on a plate.')
INSERT INTO FoodCategory VALUES(6, 'Oceans Bounty (Seafood)', ' A collection of dishes that feature the freshest catches from the sea. Seafood lovers will relish the variety of flavors, from delicate fish dishes to succulent shellfish delights.')
INSERT INTO FoodCategory VALUES(7, 'Vegetarian Delights', 'An array of mouthwatering vegetarian and plant-based dishes that showcase the versatility and deliciousness of vegetables, legumes, and meat substitutes.')
INSERT INTO FoodCategory VALUES(8, 'Spicy Sensations', 'A fiery category for those who appreciate bold flavors and a little heat in their meals from spicy curries to zesty hot sauces.')
INSERT INTO FoodCategory VALUES(9, 'Artisanal Breads and Pastries', 'A celebration of the craftsmanship and creativity that goes into making exceptional bread and pastries.')
INSERT INTO FoodCategory VALUES(10, 'Gourmet Grills and Barbecue', 'A carnivores dream, featuring premium cuts of meat and expertly grilled or smoked dishes, often enhanced with tantalizing marinades and sauces.')
GO

----INSERT INTO FoodMenuItems Table

INSERT INTO FoodMenuItems VALUES(1, 1, 'Chicken Pot Pie', 'A savory pie filled with tender chicken, vegetables, and a creamy sauce, all enclosed in a flaky crust.', 650.25, 1)
INSERT INTO FoodMenuItems VALUES(2, 2, 'Roasted Vegetable Salad', 'A nutritious and flavorful salad featuring protein-packed quinoa, roasted vegetables, and a zesty dressing.', 1050.50, 1)
INSERT INTO FoodMenuItems VALUES(3, 1, 'Meatloaf with Mashed Potatoes', 'A comforting dish made from a blend of ground meats, breadcrumbs, and seasonings, often served with mashed potatoes and gravy.', 745.20, 1)
INSERT INTO FoodMenuItems VALUES(4, 1, 'Tomato Soup with Grilled Cheese Sandwich', 'A classic combo, pairing a warm, velvety tomato soup with a crispy and cheesy grilled cheese sandwich.', 480.00, 1)
INSERT INTO FoodMenuItems VALUES(5, 6, 'Baked Lemon Butter Cod', 'Flakey cod fillets baked with a zesty lemon butter sauce, creating a light and flavorful seafood dish.', 550.25, 1)
INSERT INTO FoodMenuItems VALUES(6, 2, 'Brown Rice Buddha Bowl', ' A nourishing bowl filled with brown rice, various vegetables, avocado, and a protein source like tofu or chickpeas, often topped with a flavorful sauce.', 550.25, 1)
INSERT INTO FoodMenuItems VALUES(7, 3, 'Tacos al Pastor (Marinated Pork Tacos)', 'Tacos filled with succulent and marinated pork, often garnished with pineapple, onions, and cilantro.', 480.00, 1)
INSERT INTO FoodMenuItems VALUES(8, 5, 'Beef Stew with Root Vegetables', 'A comforting stew with tender beef, potatoes, carrots, and other root vegetables cooked in a savory broth.', 280.75, 1)
INSERT INTO FoodMenuItems VALUES(9, 1, 'Biscuits and Gravy', 'Soft and buttery biscuits served with a hearty, savory sausage gravy thats perfect for breakfast or brunch.', 590.00, 1)
INSERT INTO FoodMenuItems VALUES(10, 2, 'Grilled Salmon with Lemon-Dill Sauce', 'A heart-healthy dish of grilled salmon fillets drizzled with a tangy lemon-dill sauce, served with steamed vegetables.', 690.75, 1)
INSERT INTO FoodMenuItems VALUES(11, 3, 'Thai Stir-Fried Noodles', 'A popular Thai street food dish featuring stir-fried rice noodles with tofu, shrimp, peanuts, and lime.',1230.00, 1)
INSERT INTO FoodMenuItems VALUES(12, 4, 'Chocolate Lava Cake', ' A decadent dessert with a gooey chocolate center, often served with vanilla ice cream or a dusting of powdered sugar.', 650.25, 1)
INSERT INTO FoodMenuItems VALUES(13, 2, 'Fresh Fruit Salad with Honey-Lime Dressing', 'A refreshing medley of seasonal fruits tossed in a sweet and zesty honey-lime dressing.', 1230.00, 0)
INSERT INTO FoodMenuItems VALUES(14, 4, 'Apple Pie with Vanilla Ice Cream', 'A classic American dessert, a flaky pie crust filled with spiced apple slices and served warm with a scoop of vanilla ice cream.', 690.75, 1)
INSERT INTO FoodMenuItems VALUES(15, 10, 'BBQ Pulled Pork Sandwiches', 'A French pastry consisting of BBQ Pulled Pork Sandwiches wrapped in buttery croissant dough.', 650.25, 1)
INSERT INTO FoodMenuItems VALUES(16, 6, 'Grilled Garlic Shrimp', 'Succulent shrimp marinated in garlic and grilled to perfection, a delightful seafood appetizer or main course.', 960.45, 0)
INSERT INTO FoodMenuItems VALUES(17, 2, 'Grilled Salmon with Lemon-Dill Sauce', 'A heart-healthy dish of grilled salmon fillets drizzled with a tangy lemon-dill sauce, served with steamed vegetables.', 690.75, 1)
INSERT INTO FoodMenuItems VALUES(18, 4, 'Red Velvet Cupcakes', 'Moist and velvety cupcakes with a hint of cocoa, topped with cream cheese frosting and often decorated with red sprinkles.', 960.45, 0)
INSERT INTO FoodMenuItems VALUES(19, 8, 'Spicy Szechuan Chicken', 'Tender chicken stir-fried with Szechuan peppercorns and chili peppers, delivering a fiery and numbing sensation.', 480.00, 1)
INSERT INTO FoodMenuItems VALUES(20, 5, 'Chicken and Dumplings', 'Tender chicken pieces with fluffy dumplings simmered in a flavorful chicken broth, creating a soul-soothing meal.', 375.00, 1)
INSERT INTO FoodMenuItems VALUES(21, 10, 'Grilled Portobello Mushroom Burgers', 'Grilled portobello mushroom caps served as a delicious meat-free alternative to traditional burgers.', 1000.50, 0)
INSERT INTO FoodMenuItems VALUES(22, 5, 'Pot Roast with Potatoes and Carrots', 'A slow-cooked pot roast with potatoes, carrots, and onions, resulting in fork-tender meat and rich flavors.', 500.00, 0)
INSERT INTO FoodMenuItems VALUES(23, 9, 'Focaccia with Rosemary and Sea Salt', 'An aromatic and flavorful flatbread topped with fragrant rosemary and sea salt.', 310.00, 1)
INSERT INTO FoodMenuItems VALUES(24, 5, 'Cornbread with Honey Butter', 'A sweet and savory cornbread often served with a side of honey butter, perfect for pairing with soups or chili.', 250.50, 1)
INSERT INTO FoodMenuItems VALUES(25, 6, 'Lobster Bisque', 'A luxurious and creamy soup made from lobster, often flavored with sherry and garnished with chives.', 1000.50, 1)
INSERT INTO FoodMenuItems VALUES(26, 7, 'Chickpea Curry', 'A flavorful and protein-rich curry made with chickpeas, tomatoes, and aromatic spices.', 310.00, 1)
INSERT INTO FoodMenuItems VALUES(27, 6, 'Cajun Blackened Catfish', 'Catfish fillets seasoned with a spicy Cajun rub and blackened in a hot skillet, delivering bold and smoky flavors.', 375.00, 1)
INSERT INTO FoodMenuItems VALUES(28, 8, 'Spicy Cajun Jambalaya', 'A hearty Louisiana dish featuring spicy Andouille sausage, shrimp, chicken, and rice cooked with Cajun spices.', 1250.00, 0)
INSERT INTO FoodMenuItems VALUES(29, 7, 'Eggplant Parmesan', 'Slices of eggplant coated with breadcrumbs, layered with marinara sauce and melted cheese, then baked to perfection.', 650.25, 0)
INSERT INTO FoodMenuItems VALUES(30, 7, 'Portobello Mushroom Burgers', 'Grilled portobello mushroom caps served as a delicious meat-free alternative to traditional burgers.', 250.50, 1)
INSERT INTO FoodMenuItems VALUES(31, 8, 'Korean Kimchi Fried Rice', 'Fried rice with spicy kimchi, vegetables, and often topped with a fried egg, a popular Korean comfort food.', 590.00, 1)
INSERT INTO FoodMenuItems VALUES(32, 10, 'Ribeye Steak with Garlic Butter', 'A succulent and well-marbled ribeye steak', 450.60, 0)
INSERT INTO FoodMenuItems VALUES(33, 9, 'Sourdough Bread with Whipped Butter', 'A tangy and crusty sourdough loaf served with creamy whipped butter.', 960.45, 1)
GO

----INSERT INTO Suppliers Table

INSERT INTO Suppliers VALUES(101, 'Rakibul', 'Hasan', 'Faridpur', 'Dhaka', 'Bangladesh', 7500.00, 'rakibhasan@gmail.com.com', 'Male', 01434567890)
INSERT INTO Suppliers VALUES(102, 'Ebadot', 'Hossein', 'Gazipur', 'Dhaka', 'Bangladesh', 8200.00, 'ebadothossein@gmail.com', 'Male', 01987654321)
INSERT INTO Suppliers VALUES(103, 'Nasir', 'Miya', 'Natore', 'Rajshahi', 'Bangladesh', 9600.00, 'nasirmiya@gmail.com', 'Male', 01456789012)
INSERT INTO Suppliers VALUES(104, 'Jamal', 'Hosen', 'Kurigram', 'Rangpur', 'Bangladesh', 5300.00, 'jamalhosen@gmail.com', 'Male', 01789012343)
INSERT INTO Suppliers VALUES(105, 'Nurul', 'Haque', 'Habiganj', 'Sylhet', 'Bangladesh', 6800.00, 'nurulhaque@gmail.com', 'Male', 01334567894)
INSERT INTO Suppliers VALUES(106, 'Junayed', 'Siddique', 'Sherpur', 'Mymensingh', 'Bangladesh', 7400.00, 'junayedsiddique@gmail.com', 'Male', 01890123455)
INSERT INTO Suppliers VALUES(107, 'Rahul', 'Kabir', 'Comilla', 'Chittagong', 'Bangladesh', 5100.00, 'rahylkabir@gmail.com', 'Male', 01345678906)
INSERT INTO Suppliers VALUES(108, 'Akash', 'Mahmud', 'Patuakhali', 'Barisal', 'Bangladesh', 4700.00, 'akashmahmud@gmail.com', 'Male', 01901234567)
INSERT INTO Suppliers VALUES(109, 'Tamim', 'Iqbal', 'Kushtia', 'Khulna', 'Bangladesh', 6000.00, 'tabimiqbal@email.com', 'Male', 01456789018)
INSERT INTO Suppliers VALUES(110, 'Mustafizur', 'Rahman','Bogra', 'Rajshahi', 'Bangladesh', 8500.00, 'mustafizur458@email.com', 'Male', 01890123459)
GO
INSERT INTO Suppliers VALUES(111, 'Refaj', 'Khan', 'Faridpur', 'Dhaka', 'Bangladesh', 7500.00, 'refajkhan@gmail.com.com', 'Male', 01434562090)
INSERT INTO Suppliers VALUES(112, 'Abed', 'Ali', 'Gazipur', 'Dhaka', 'Bangladesh', 8200.00, 'abedali@gmail.com', 'Male', 01487657321)
INSERT INTO Suppliers VALUES(113, 'Joynul', 'Abedin', 'Natore', 'Rajshahi', 'Bangladesh', 9600.00, 'joynulabedin@gmail.com', 'Male', 01856787712)
INSERT INTO Suppliers VALUES(114, 'Karim', 'Janat', 'Kurigram', 'Rangpur', 'Bangladesh', 5300.00, 'karimjanat@gmail.com', 'Male', 01789012303)
INSERT INTO Suppliers VALUES(115, 'Akkas', 'Miya', 'Habiganj', 'Sylhet', 'Bangladesh', 6800.00, 'akkasmiya@gmail.com', 'Male', 01334567887)
INSERT INTO Suppliers VALUES(116, 'Jakir', 'Hasan', 'Sherpur', 'Mymensingh', 'Bangladesh', 7400.00, 'jakirhasan@gmail.com', 'Male', 01390125557)
INSERT INTO Suppliers VALUES(117, 'Samiul', 'Bashar', 'Comilla', 'Chittagong', 'Bangladesh', 5100.00, 'samiulbashar@gmail.com', 'Male', 01745622905)
INSERT INTO Suppliers VALUES(118, 'Hridoy', 'Khan', 'Patuakhali', 'Barisal', 'Bangladesh', 4700.00, 'hridoykhan@gmail.com', 'Male', 01501234566)
INSERT INTO Suppliers VALUES(119, 'Tareq', 'Jamil', 'Kushtia', 'Khulna', 'Bangladesh', 6000.00, 'tareqjamil@email.com', 'Male', 01956787619)
INSERT INTO Suppliers VALUES(120, 'Mahfuzur', 'Rahman','Bogra', 'Rajshahi', 'Bangladesh', 8500.00, 'mahfuzur458@email.com', 'Male', 01490123120)
GO

----INSERT INTO Orders Table

INSERT INTO Orders (OrderID, CustomerID, MenuItemID, SupplierID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate, DeliveryFee, Discount)
VALUES
    (1, 15, 21, 101, '2023-07-15', 550.00, 'Delivered', 'Gazipur, Dhaka', '2023-07-18', 125.00, 0.00),
    (2, 20, 27, 103, '2023-07-13', 730.00, 'Delivered', 'Natore, Rajshahi', '2023-07-16', 225.00, 10.00),
    (3, 13, 13, 106, '2023-07-17', 625.00, 'Delivered', 'Comilla, Chittagong', '2023-07-19', 140.00, 20.00),
    (4, 9, 24, 101, '2023-07-18', 440.00, 'Delivered', 'Bogra, Rajshahi', '2023-07-21', 160.00, 30.00),
    (5, 5, 15, 109, '2023-07-19', 955.00, 'Shipped', 'Habiganj, Sylhet', NULL, 0.00, 15.00),
    (6, 6, 26, 107, '2023-07-20', 320.00, 'Delivered', 'Faridpur, Dhaka', '2023-07-23', 100.00, 0.00),
    (7, 17, 17, 104, '2023-07-21', 815.00, 'Pending', 'Sherpur, Mymensingh', NULL, NULL, NULL),
    (8, 10, 28, 108, '2023-07-22', 735.00, 'Delivered', 'Dinajpur, Rangpur', '2023-07-25', 150.00, 0.00),
    (9, 19, 29, 105, '2023-07-23', 1060.00, 'Delivered', 'Barguna, Barisal', '2023-07-26', 170.00, 15.00),
    (10, 10, 10, 102, '2023-07-24', 628.00, 'Shipped', 'Coxs Bazar, Chittagong', NULL, 0.00, 2.00);
GO

INSERT INTO Orders (OrderID, CustomerID, MenuItemID, SupplierID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate, DeliveryFee, Discount)
VALUES
	(11, 18, 31, 115, '2023-06-10', 450.00, 'Delivered', 'Rangamati, Chittagong', '2023-06-12', 250.00, 0.00),
    (12, 12, 2, 106, '2023-06-16', 530.00, 'Pending', 'Moulvibazar, Sylhet', NULL, NULL, NULL),
    (13, 23, 13, 118, '2023-06-17', 725.00, 'Delivered', 'Comilla, Chittagong', '2023-06-19', 400.00, 20.00),
    (14, 14, 24, 111, '2023-06-15', 340.00, 'Delivered', 'Jessore, Khulna', '2023-07-18', 260.00, 30.00),
    (15, 25, 5, 108, '2023-06-19', 855.00, 'Shipped', 'Habiganj, Sylhet', NULL, 0.00, 5.00),
    (16, 16, 16, 115, '2023-05-20', 220.00, 'Delivered', 'Faridpur, Dhaka', '2023-05-23', 133.00, 0.00),
    (17, 7, 7, 117, '2023-05-02', 615.00, 'Delivered', 'Sherpur, Mymensingh', '2023-05-05', 150.00, 15.00),
    (18, 18, 28, 113, '2023-05-22', 435.00, 'Delivered', 'Kurigram, Rangpur', '2023-05-25', 350.00, 0.00),
    (19, 9, 19, 119, '2023-05-23', 1060.00, 'Delivered', 'Barguna, Barisal', '2023-05-26', 170.00, 15.00),
    (20, 22, 3, 120, '2023-05-24', 228.00, 'Shipped', 'Narayanganj, Dhaka', NULL, 0.00, 2.00);
GO

INSERT INTO Orders (OrderID, CustomerID, MenuItemID, SupplierID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate, DeliveryFee, Discount)
VALUES
	(21, 12, 1, 101, '2023-04-10', 650.00, 'Delivered', 'Natore, Rajshahi', '2023-04-12', 170.00, 0.00),
    (22, 1, 14, 103, '2023-04-16', 930.00, 'Delivered', 'Moulvibazar, Sylhet', '2023-04-18', 100.00, 15.00),
    (33, 5, 2, 115, '2023-04-17', 325.00, 'Delivered', 'Comilla, Chittagong', '2023-04-19', 220.00, 20.00),
    (24, 19, 17, 106, '2023-04-15', 740.00, 'Delivered', 'Jessore, Khulna', '2023-04-18', 140.00, 30.00),
    (25, 11, 1, 109, '2023-04-19', 255.00, 'Shipped', 'Habiganj, Sylhet', NULL, 0.00, 5.00),
    (26, 22, 16, 114, '2023-02-20', 320.00, 'Delivered', 'Faridpur, Dhaka', '2023-02-23', 180.00, 0.00),
    (27, 22, 2, 119, '2023-02-21', 515.00, 'Pending', 'Sherpur, Mymensingh', NULL, NULL, NULL),
    (28, 23, 23, 120, '2023-02-22', 635.00, 'Delivered', 'Bagerhat, Khulna', '2023-02-25', 120.00, 0.00),
    (29, 30, 3, 105, '2023-02-23', 860.00, 'Delivered', 'Gazipur, Dhaka', '2023-02-26', 220.00, 25.00),
    (30, 17, 7, 110, '2023-02-24', 470.00, 'Shipped', 'Narayanganj, Dhaka', NULL, 0.00, 20.00);
GO

INSERT INTO Orders (OrderID, CustomerID, MenuItemID, SupplierID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate, DeliveryFee, Discount)
VALUES
	(31, 2, 1, 105, '2023-06-15', 480.00, 'Delivered', 'Rangamati, Chittagong', '2023-06-18', 170.00, 0.00),
    (32, 10, 1, 109, '2023-06-16', 690.00, 'Pending', 'Moulvibazar, Sylhet', NULL, NULL, NULL),
    (23, 15, 7, 115, '2023-06-25', 705.00, 'Delivered', 'Natore, Rajshahi', '2023-06-28', 220.00, 20.00),
    (34, 1, 18, 102, '2023-06-05', 350.00, 'Delivered', 'Rangamati, Chittagong', '2023-06-08', 140.00, 30.00),
    (35, 13, 14, 110, '2023-06-19', 355.00, 'Shipped', 'Moulvibazar, Sylhet', NULL, 0.00, 5.00),
    (36, 20, 21, 119, '2023-03-25', 320.00, 'Delivered', 'Faridpur, Dhaka', '2023-03-26', 180.00, 0.00),
    (37, 20, 27, 108, '2023-03-21', 515.00, 'Pending', 'Sherpur, Mymensingh', NULL, NULL, NULL),
    (38, 13, 23, 120, '2023-03-10', 435.00, 'Delivered', 'Gazipur, Dhaka', '2023-03-12', 120.00, 0.00),
    (39, 5, 13, 105, '2023-03-18', 960.00, 'Delivered', 'Barguna, Barisal', '2023-03-20', 220.00, 25.00),
    (40, 18, 7, 110, '2023-03-24', 635.00, 'Shipped', 'Narayanganj, Dhaka', NULL, 0.00, 20.00);
GO

/*
==============================  SECTION 02  ==============================
					INSERT DATA THROUGH STORED PROCEDURE
==========================================================================
*/

EXEC sp_InsertSupplierInfo
	@SupplierID = 122,
    @SupplierFirstName = 'Yeasin',
    @SupplierLastName = 'Arafat',
	@SupplierCity = 'Dhaka',
	@SupplierSalary = 8600,
	@SupplierGender = 'Male'
GO

DECLARE @NewCustomerInfo INT
EXEC sp_InsertCustomerInfoWithOutParameter 'Shahid', 'Afridi', 'Dhaka', 'Male', 'shahidafridi080@gmail.com', '01752261008', @NewCustomerInfo OUTPUT
SELECT @NewCustomerInfo
GO

--============== INSERT DATA USING SEQUENCE VALUE ============--

INSERT INTO FSMS.tblFoodInfo VALUES((NEXT VALUE FOR FoodID), NULL, NULL)
GO
SELECT * FROM FSMS.tblFoodInfo
GO

/*
==============================  SECTION 03  ==============================
			UPDATE DELETE DATA THROUGH STORED PROCEDURE
==========================================================================
*/
-- STORED PROCEDURE for update customer (city)
EXEC spUpdateData 32, 'Chittagong'
EXEC spUpdateData 22, 'Dhaka'
EXEC spUpdateData 31, 'Rangpur'
GO

--============== DELETE DATA THROUGH STORED PROCEDURE ============--
-- STORED PROCEDURE for Delete CourseSales

EXEC spDeleteData 32
EXEC spDeleteData 31
GO

--============== STORED PROCEDURE WITH TRY CATCH AND RAISE ERROR ============--

EXEC spRaisError
GO

/*
==============================  SECTION 04  ==============================
					INSERT UPDATE DELETE DATA THROUGH VIEW
==========================================================================
*/

--============== INSERT DATA through view ============--
SELECT * FROM VW_FoodInfo2
GO

INSERT INTO VW_FoodInfo2(FoodID, FoodName, FoodDescription) VALUES (2, 'Chicken Pot Pie',  'A savory pie filled with tender chicken, vegetables.')
INSERT INTO VW_FoodInfo2(FoodID, FoodName, FoodDescription) VALUES (3, 'Roasted Vegetable Salad',  'A nutritious and flavorful salad featuring protein-packed quinoa.')
GO

--============== UPDATE DATA through view ============--

UPDATE VW_FoodInfo2
SET FoodName = 'Chocolate Lava Cake'
WHERE FoodID = 1
GO

--============== DELETE DATA through view ============--

DELETE FROM VW_FoodInfo2
WHERE FoodID = 3
GO

/*
==============================  SECTION 05  ==============================
						RETREIVE DATA USING FUNCTION
==========================================================================
*/

--------A SCALAR FUNCTION to get TotalOrderAmount----------

SELECT dbo.fnCalculateTotal (550, 125) AS Total
GO

-- A Inline Table Valued Function to get monthly & yearly total sales using two parameter @year & @month

SELECT * FROM fnMonthlyfoodSales (2023, 6)
GO

--============== A MULTISTATEMENT TABLE VALUED FUNCTION ============--

SELECT * FROM fnSalesDetails (2023, 5)
GO

/*
==============================  SECTION 06  ==============================
							   TEST TRIGGER
==========================================================================
*/
---UPDATE & DELETE action TRIGGER does not allow

UPDATE [FSMS].[tblFoodInfo] SET FoodName = 'Chicken Role' WHERE FoodId = 4
DELETE FROM [FSMS].[tblFoodInfo]  WHERE FoodId = 12
GO

------ INSERT DATA IN Orders TABLE and AUTOMATICALLY UPDATE OrderAudit TABLE

INSERT INTO Orders (OrderID, CustomerID, MenuItemID, SupplierID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate, DeliveryFee, Discount)
VALUES (43, 10, 23, 107, '2023-07-05', 630.00, 'Delivered', 'Gazipur, Dhaka', '2023-07-18', 120.00, 2.00)
GO

--============== INSTEAD OF TRIGGER ON TABLE ============--

--INSTEAD OF INSERT TRIGGER ON vwOrder and AUTOMATICALLY UPDATE Orders TABLE

INSERT INTO Orders (OrderID, CustomerID, MenuItemID, SupplierID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate, DeliveryFee, Discount)
VALUES (42, 14, 20, 101, '2023-07-05', 630.00, 'Delivered', 'Narayanganj, Dhaka', '2023-07-18', 120.00, 2.00)
GO
SELECT * FROM Orders
GO
SELECT * FROM vwOrder
GO

/*
==============================  SECTION 07  ==============================
								  QUERY
==========================================================================
*/


--============== 7.01 A SELECT STATEMENT TO GET RESULT SET FROM A TABLE ============--

SELECT * FROM Customer
GO

--============== 7.02 A SELECT STATEMENT TO GET customer, food & order information FROM A VIEW ============--

SELECT * FROM VW_FoodInfo
GO

--============== 7.03 SELECT INTO > SAVE RESULT SET TO A NEW TEMPORARY TABLE ============--

SELECT * INTO #Suppliers
FROM Suppliers
GO

SELECT * FROM #Suppliers
GO

--============== 7.04 IMPLICIT JOIN WITH WHERE BY CLAUSE, ORDER BY CLAUSE ============--

-----Get Food Information---

SELECT MenuItemsName, CategoryName, MenuItemsDescription, Price 
FROM FoodMenuItems, FoodCategory
WHERE FoodMenuItems.CategoryID = FoodCategory.CategoryID
ORDER BY MenuItemsName ASC, CategoryName DESC
GO

--============== 7.05 INNER JOIN WITH GROUP BY CLAUSE ============--

-----Get Total Order by City----

SELECT CustomerCity, COUNT(*) AS 'Total Order' 
FROM Orders
INNER JOIN Customer
ON Customer.CustomerID = Orders.CustomerID
GROUP BY CustomerCity
GO

--============== 7.06 LEFT, RIGHT & OUTER JOIN ============--

SELECT * FROM FoodMenuItems
LEFT JOIN FoodCategory ON FoodMenuItems.CategoryID = FoodCategory.CategoryID
GO

SELECT * FROM FoodMenuItems
RIGHT JOIN FoodCategory ON FoodMenuItems.CategoryID = FoodCategory.CategoryID
GO

SELECT * FROM FoodMenuItems
FULL OUTER JOIN FoodCategory ON FoodMenuItems.CategoryID = FoodCategory.CategoryID
GO

--============== 7.07 CROSS JOIN ============--

SELECT * FROM FoodMenuItems
CROSS JOIN FoodCategory
GO

--============== 7.08 TOP CLAUSE WITH TIES ============--

SELECT TOP 5 WITH TIES FI.MenuItemsName, FC.CategoryID, FC.CategoryName, FI.MenuItemsDescription, FI.Price 
FROM FoodMenuItems FI
JOIN FoodCategory FC ON FI.CategoryID = FC.CategoryID
ORDER BY FC.CategoryID
GO

--============== 7.09 DISTINCT ============--

SELECT DISTINCT CustomerCity FROM Customer
GO

--============== 7.10 COMPARISON, LOGICAL(AND OR NOT) & BETWEEN OPERATOR ============--

SELECT * FROM Orders WHERE OrderDate BETWEEN '2023-03-10' AND '2023-06-10'
GO

SELECT * FROM Customer WHERE CustomerCity = 'Dhaka' AND CustomerGender =  'Male'
GO

SELECT * FROM Customer WHERE CustomerCity = 'Dhaka' OR CustomerAddress = 'Comilla'
GO

SELECT * FROM Customer WHERE CustomerCity = 'Dhaka' AND NOT CustomerGender = 'Female'
GO

--============== 7.11 LIKE, IN, NOT IN, OPERATOR & IS NULL CLAUSE ============--

SELECT * FROM Customer WHERE CustomerCity LIKE 'D%'
GO

SELECT * FROM Customer WHERE CustomerCity NOT IN ('Dhaka', 'Khulna')
GO

SELECT * FROM Customer WHERE CustomerAddress IS NULL
GO

--============== 7.12 OFFSET FETCH ============--

SELECT * FROM Customer
ORDER BY CustomerID
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY
GO

--============== 7.13 UNION ============--

SELECT CustomerID FROM Customer

UNION

SELECT CustomerID FROM Orders

--============== 7.14 EXCEPT INTERSECT ============--

--EXCEPT
SELECT * FROM Customer

EXCEPT

SELECT * FROM Customer
WHERE CustomerID = 5
GO

--INTERSECT

SELECT * FROM Customer
WHERE CustomerID > 10

INTERSECT

SELECT * FROM Customer
WHERE CustomerID > 15
GO


/*
==============================  SECTION 7.15 ==============================
						     AGGREGATE FUNCTIONS
==========================================================================
*/

SELECT CustomerID, OrderStatus,
	   SUM(TotalAmount) AS SumTotalAmount,
	   AVG(TotalAmount) AS AvgTotalAmount,
	   MAX(TotalAmount) AS MaxTotalAmount,
	   MIN(TotalAmount) AS MinTotalAmount,
	   COUNT(*) AS TotalOrder
FROM Orders
GROUP BY CustomerID, OrderStatus
GO

/*
==============================  SECTION 7.16 ==============================
						    GROUP BY & HAVING CLAUSE
==========================================================================
*/

SELECT CustomerCity, COUNT(*) AS 'Total Order' 
FROM Orders
INNER JOIN Customer
ON Customer.CustomerID = Orders.CustomerID
GROUP BY CustomerCity
HAVING COUNT(*) >= 4 
GO

/*
==============================  SECTION 7.17 ==============================
						    ROLLUP & CUBE OPERATOR
==========================================================================
*/

---- ROLLUP
SELECT CustomerFirstName, CustomerCity, COUNT(*) AS TotalCustomer 
FROM Customer
GROUP BY CustomerFirstName, CustomerCity WITH ROLLUP
GO

---- CUBE
SELECT CustomerFirstName, CustomerCity, COUNT(*) AS TotalCustomer 
FROM Customer
GROUP BY CustomerFirstName, CustomerCity WITH CUBE
GO
/*
==============================  SECTION 7.18 ==============================
								GROUPING SETS
==========================================================================
*/

SELECT CustomerCity, CustomerState, COUNT(*) AS TotalCustomer 
FROM Customer
GROUP BY  GROUPING SETS(CustomerCity, CustomerState)			  
GO
/*
==============================  SECTION 7.19 ==============================
						SUB-QUERIES, CORRELATED SUB-QUERIES
==========================================================================
*/

-----SUB-QUERIES
SELECT CustomerID
FROM Customer
WHERE CustomerID IN (SELECT CustomerID FROM Orders WHERE OrderStatus = 'Delivered');
GO

------CORRELATED SUB-QUERIES
SELECT OrderID, OrderDate, TotalAmount 
FROM Orders o1
WHERE TotalAmount = (SELECT MAX(TotalAmount) FROM Orders o2 WHERE o1.OrderID = o2.OrderID)

/*
==============================  SECTION 7.20 ==============================
									EXISTS
==========================================================================
*/

SELECT CustomerID, CustomerFirstName
FROM Customer c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.CustomerID = c.CustomerID
);

/*
==============================  SECTION 7.21 ==============================
									CTE
==========================================================================
*/

WITH FoodInfo(MenuItemsName, CategoryName, MenuItemsDescription, Price)
AS
	(
		SELECT MenuItemsName, CategoryName, MenuItemsDescription, Price 
		FROM FoodMenuItems
		JOIN  FoodCategory 
		ON FoodMenuItems.CategoryID = FoodCategory.CategoryID
	)

SELECT MenuItemsName, CategoryName, MenuItemsDescription, Price
FROM FoodInfo
WHERE Price >= 500

/*
==============================  SECTION 7.22 ==============================
									MERGE
==========================================================================
*/
		
MERGE INTO FoodCategory2 AS FC2
USING FoodCategory AS FC1
ON FC2.CategoryID = FC1.CategoryID
WHEN MATCHED
	THEN 
		UPDATE SET FC2.CategoryName = FC1.CategoryName
WHEN NOT MATCHED BY TARGET
	THEN
		INSERT (CategoryID, CategoryName, CategoryDescription) VALUES (FC1.CategoryID, FC1.CategoryName, FC1.CategoryDescription)
WHEN NOT MATCHED BY SOURCE
	THEN
		DELETE;
GO

/*
==============================  SECTION 7.23 ==============================
							 BUILT IN FUNCTION
==========================================================================
*/

-- Get current date and time
SELECT GETDATE()
GO

-- GET STRING LENGTH
SELECT CategoryID, LEN(CategoryName) 'Name Length' FROM FoodCategory
GO

-- CONVERT DATA USING CAST()
SELECT CAST(GETDATE() AS DATE)
GO

-- CONVERT DATA USING CONVERT()
SELECT CONVERT(DATE, GETDATE())
GO

-- CONVERT DATA USING TRY_CONVERT()
SELECT TRY_CONVERT(FLOAT, 'HELLO', 1) AS ReturnNull
GO

-- GET DIFFERENCE OF DATES
SELECT DATEDIFF(YEAR, '2001-09-14', '2023-07-24') AS 'Day'
GO

-- GET A MONTH NAME
SELECT DATENAME(MONTH, GETDATE()) AS 'Month'
GO

/*
==============================  SECTION 7.24 ==============================
									CASE
==========================================================================
*/

SELECT MenuItemsName, Price, 
    CASE
        WHEN Price < 500 THEN 'Low'
        WHEN Price >= 500 AND Price < 900 THEN 'Medium'
        ELSE 'High'
    END AS PriceRange
FROM FoodMenuItems;
GO

/*
==============================  SECTION 7.25 ==============================
								 IIF FUNCTION
==========================================================================
*/

SELECT MenuItemsName, Price,
IIF (Price <= 500, 'Low', 'High') AS PriceRange
FROM FoodMenuItems
GO

/*
==============================  SECTION 7.26 ==============================
							  COALESCE & ISNULL
==========================================================================
*/

SELECT CustomerID, COALESCE(CustomerAddress, 'Not Available') AS CustomerAddress, 
	   ISNULL(CustomerState, 'Not Available') AS  CustomerState
FROM   Customer

/*
==============================  SECTION 7.27 ==============================
									WHILE
==========================================================================
*/

	DECLARE @counter int
	SET @counter = 0

	WHILE @counter <= 10

	BEGIN
	  SET @counter = @counter + 1
	  INSERT INTO FSMS.tblFoodInfo (FoodId, FoodName) VALUES((NEXT VALUE FOR FoodID), NULL)
	END

	SELECT * FROM FSMS.tblFoodInfo
GO

/*
==============================  SECTION 7.28 ==============================
							  GROPING FUNCTION
==========================================================================
*/

SELECT CustomerCity, CustomerGender, COUNT(*) AS TotalCustomer
FROM Customer
GROUP BY GROUPING SETS
(
	(CustomerCity, CustomerGender),
	(CustomerCity),
	(CustomerGender),
	()
)
ORDER BY GROUPING(CustomerCity), GROUPING(CustomerGender)
GO

/*
==============================  SECTION 7.29 ==============================
							  RANKING FUNCTION
==========================================================================
*/

SELECT 
RANK() OVER(ORDER BY OrderID) AS 'Rank',
DENSE_RANK() OVER(ORDER BY CustomerID) AS 'Dense_Rank',
NTILE(3) OVER(ORDER BY TotalAmount) AS 'NTILE',
OrderID,
CustomerID, 
TotalAmount
FROM Orders
GO

/*
==============================  SECTION 7.30 ==============================
							   IF ELSE & PRINT
==========================================================================
*/

DECLARE @FoodAvailable BIT
SELECT @FoodAvailable = isAvailable
FROM FoodMenuItems
WHERE isAvailable = 1
IF @FoodAvailable > 0
	BEGIN
		PRINT 'Food is available'
	END
ELSE
	BEGIN
		PRINT 'Foods are not available'
	END
GO

/*
==============================  SECTION 7.31 ==============================
							      TRY CATCH
==========================================================================
*/

-- Insert a new record with an error (duplicate primary key)
BEGIN TRY
    INSERT INTO FoodCategory (CategoryID, CategoryName)
    VALUES (1, 'Sizzling Street Food'); -- Duplicate primary key, will cause an error
END TRY
BEGIN CATCH
    -- Handle the error and display an error message
    SELECT 
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState;
END CATCH;

/*
==============================  SECTION 7.32 ==============================
							       GOTO
==========================================================================
*/

DECLARE @Counter INT = 1;
DECLARE @MaxValue INT = 5;

WHILE @Counter <= @MaxValue
BEGIN
    IF @Counter = 3
    BEGIN
        PRINT 'Reached the value 3.';
        GOTO EndLoop;
    END

    PRINT 'Current Counter Value: ' + CAST(@Counter AS VARCHAR(10));
    SET @Counter = @Counter + 1;
END

EndLoop:
PRINT 'End of the loop.';

--============== 7.33 SYSTEM STORED PROCEDURE(sp_helptext) TO GET UNENCRYPTED STORED PROCEDURE SCRIPT  ============--

EXEC sp_helptext sp_InsertSupplierInfo
GO

------------------------------End-------------------------------------