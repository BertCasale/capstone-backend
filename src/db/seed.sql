-- psql -U postgres -f src/db/seed.sql

\c acorn_dev;

INSERT INTO achievements
(name, description, image)
VALUES
('Completed Elements of Art', 'Awarded on completing Elements of Art lesson', 'none'),           
('Completed Principles of Art', 'Awarded on completing Principles of Art lesson', 'none');

INSERT INTO ads
(created_datetime, title, start_datetime, end_datetime, content_title, content_text, content_image, content_map_data)
VALUES
('2023-08-29', 'promo1', '2023-08-29', '2023-12-31', 'placeholder1', 'placeholder1_text', 'none', 'none'),
('2023-08-29', 'promo2', '2023-08-29', '2023-12-31', 'placeholder2', 'placeholder2_text', 'none', 'none');

INSERT INTO clients
(providerid, registration_datetime, username, email, password, profile_picture, role)
VALUES
(NULL, '2023-08-01', 'Alexia Apple', 'alexia@gmail.com', 'apassword', 'none', 'Administrator'),
(NULL, '2023-08-02', 'Bartholomew Bagel', 'barty@gmail.com', 'bpassword', 'none', 'Student');

INSERT INTO languages
(created_datetime, name, image)
VALUES
('2023-08-29', 'English (US)', 'none'),
('2023-08-29', '简体中文', 'none'),
('2023-08-29', '中國傳統的', 'none'),
('2023-08-29', 'Español', 'none'),
('2023-08-29', 'عربي', 'none'),
('2023-08-29', 'Português', 'none'),
('2023-08-29', 'bahasa Indonesia', 'none'),
('2023-08-29', 'Français', 'none'),
('2023-08-29', '日本語', 'none'),
('2023-08-29', 'Русский', 'none'),
('2023-08-29', 'Deutsch', 'none');

INSERT INTO lessons
(language_id, category, title, duration, difficulty, description, materials, preview)
VALUES
(1, 'Elements of Art', 'Lines', '15 Minutes', 'Very Easy', 'Start with the basics of art by learning about lines', 'Pen or Pencil, Paper', 'None'),
(1, 'Elements of Art', 'Value', '10 Minutes', 'Very Easy', 'Learn another basic of art, value.', 'Pen or Pencil, Paper', 'None'),
(1, 'Elements of Art', 'Color', '20 Minutes', 'Easy', 'Start creating more meaningful art by learning colors.', 'Colored Pencils, Paper', 'None'),
(2, '元素艺术', '线条', '15分钟', '非常简单', '从学习线条的基础开始，掌握艺术的基本要素', '钢笔或铅笔，纸张', '无'),
(2, '元素艺术', '色值', '10分钟', '非常简单', '了解艺术的另一个基本要素，色值', '钢笔或铅笔，纸张', '无'),
(2, '元素艺术', '颜色', '20分钟', '容易', '通过学习颜色开始创作更有意义的艺术品', '彩色铅笔，纸张', '无'),
(3, '藝術元素', '線條', '15分鐘', '非常容易', '以學習線條的基本知識為開始，掌握藝術的基本要素', '鋼筆或鉛筆，紙張', '無'),
(3, '藝術元素', '色調', '10分鐘', '非常容易', '學習藝術的另一個基本要素，色調', '鋼筆或鉛筆，紙張', '無'),
(3, '藝術元素', '顏色', '20分鐘', '容易', '通過學習顏色開始創作更有意義的藝術作品', '彩色鉛筆，紙張', '無'),
(4, 'Elementos de Arte', 'Líneas', '15 minutos', 'Muy fácil', 'Comienza con lo básico del arte aprendiendo acerca de las líneas', 'Pluma o lápiz, papel', 'Ninguno'),
(4, 'Elementos de Arte', 'Valor', '10 minutos', 'Muy fácil', 'Aprende otro concepto básico del arte, el valor', 'Pluma o lápiz, papel', 'Ninguno'),
(4, 'Elementos de Arte', 'Color', '20 minutos', 'Fácil', 'Comienza a crear arte más significativo aprendiendo sobre los colores', 'Lápices de colores, papel', 'Ninguno'),
(5, 'عناصر الفن', 'الخطوط', '15 دقيقة', 'سهل جداً', 'ابدأ بأساسيات الفن من خلال تعلم الخطوط', 'قلم أو قلم رصاص، ورقة', 'لا شيء'),
(5, 'عناصر الفن', 'القيمة', '10 دقائق', 'سهل جداً', 'تعلم مفهوم آخر أساسي للفن، القيمة', 'قلم أو قلم رصاص، ورقة', 'لا شيء'),
(5, 'عناصر الفن', 'اللون', '20 دقيقة', 'سهل', 'ابدأ في إنشاء فن أكثر معنىً عن طريق تعلم الألوان', 'ألوان ملونة، ورقة', 'لا شيء');

INSERT INTO client_achievements
(client_id, achievement_id)
VALUES
(1,1),
(2,1);

INSERT INTO client_lessons_progress
(client_id, lesson_id, lesson_completion_status)
VALUES
(1, 1, TRUE),
(2, 1, TRUE);

INSERT INTO lesson_sections
(lesson_id, language_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback, question, image_credit)
VALUES
(1, 1, 'Introduction', 'Lines are one of the most basic art elements.  They are the underlying foundation of most art.  The qualities of a line can vary in length, direction, and thickness.', 'none', NULL, NULL, NULL, NULL),
(1, 1, 'Converging Lines', 'Converging lines, or lines that point in the same direction, draw your eye in to the point where they meet.', 'ConvergingLines', 'Correct!  The lines of the bridge, bridge shadow, sidewalk, and even the building in the back seem to be directing your attention to the couple walking.', 'Hint: Follow the bridge and sidewalk lines to find the area where they meet.', 'In the image above, click on the area that the converging lines seem to be directing your eyes toward.', 'Le Pont de l''Europe, Gustav Caillebote, 1876\nImage credit to Wikipedia'),
(1, 1, 'Horizontal Lines', 'The direction of line shave lots of different meanings. \nHorizontal lines, or lines that move from left to right, give a sense of calm, rest, stagnation, or sadness.', 'HorizontalLines', 'The horizon is one of the best examples of a horizontal line.  In this case, it represents stagnation and sadness.', NULL, 'Place the line on the prominent horizontal line in the image.', 'The Monk by the Sea, Caspar David Friedrich, 1808-10\nImage credit to Wikipedia'),
(1, 1, 'Vertical Lines', 'Vertical lines, or lines that move from top to bottom, give a sense of height, strength, or stability.', 'VerticalLines', 'Buildings and architecture are great examples of vertical lines.  The pillars in this image represent strength and stability.', NULL, 'Place the lines on some of the prominent vertical lines in the image.', 'The Choir and North Ambulatory of the Church of Saint Bavo, Haarlem, Pieter Jansz, 1634\nImage credit to Getty'),
(1, 1, 'Diagonal Lines', 'Diagonal lines give a sense of motion and instability.', 'DiagonalLines', 'The swing''s ropes being diagonal show that the swing is moving. There are more subtle diagonal lines in the image too, such as the arm of the man falling in the lower left and the shoe that was sent flying in the air.', NULL, 'Place the lines on some of the prominent diagonal lines in the image.', 'The Swing, Jean-Honoré Fragonard, 1767-8\nImage credit to Wikipedia'),
(1, 1, 'Curved Lines', 'Curved lines give a sense of fluidity, softness, turmoil, or chaos.', 'CurvedLines', 'The curved lines show the water moving in big waves, representing fluidity and turmoil.', NULL, 'Place the lines on some of the prominent curved lines in the image.', 'The Great Wave off Kanagawa, Katsushika Hokusai, 1831\nImage credit to Wikipedia'),
(1, 1, 'Zigzag Lines', 'Zigzag lines give a sense of restlessness, anxiety, or excitement.', 'ZigzagLines', 'In early civilizations, zigzag lines were often used as a warning signs. However, in this case, they may have been used to symbolize water goes in the pot.', NULL, 'Place the lines on the areas with zigzag lines in the image.', 'Jar with Zigzag Panels, ca. 3500-3300 B.C.E.\nImage credit to Brooklyn Museum'),
(1, 1, 'Lines Test', 'Time to test your knowledge.', 'LinesTest', 'Correct! In the first image, the diagonal lines of the mast and the back of the boat, along with the curved lines of the waves, show that the boat is moving. The second image uses vertical lines for the masts of the boats to show that they are sitting still.', 'Try again. Hint: Think back to the meanings of vertical and diagonal lines.', 'Select the artwork above that has a stronger sense of motion.', 'Breezing Up (A Fair Wind), Winslow Homer, 1873-1876\nImage credit to Wikipedia\nRed Boats at Argenteuil, Claude Monet, 1875\nImage credit to Wikipedia'),
(2, 1, 'Introduction', 'Value is basically how light or dark something is. Before you can understand color, you should know black and white. The values in an image can help set the mood of an image or create images that have depth.
', 'none', NULL, NULL, NULL, NULL),
(2, 1, 'Light Source', 'Knowing which direction the light is coming from, or your light source, is important to understand how to properly place shadows in your image, to give it a sense of depth. The sides of objects facing the light source will be lighter, while the sides facing away will be darker.', 'LightSourceValue', 'Correct! The back of her head, neck and shirt are darker because they are facing away from the light, while her face and front of shirt are lighter because they are facing toward the light. The reflections in her earring and eyes also show the light source to the left.', 'Find the darkest and the lightest areas and think about the sides they are on.', 'Select which side the light source is located in the image.', 'Girl with a Pearl Earring, Johannes Vermeer, c. 1665\nImage credit to Wikipedia'),
(2, 1, 'Grayscale', 'White is the lightest color, black is the darkest, and directly in-between them is middle gray. Images made with only black, white, and gray are in grayscale.', 'GrayscaleValue', 'By mixing different amounts of black and white together, you get different shades of gray.', NULL, 'Place the grayscale values in order from lightest to darkest.', NULL),
(2, 1, 'Mood', 'Having lots of either light or dark values can change the mood of the artwork. Light often represents good, order, and life, while darkness often represents evil, chaos, and death.', 'MoodValue', 'Correct! The artist used darkness surrounding the person to give a feeling of fear, sadness, and hopelessness.', 'Think about how much light there is compared to dark. Is one surrounding the other?', 'Click 2 of the emotions it appears the artist was trying to convey.', 'Sad forebodings of what is to happen, Francisco Goya, 1810\n Image credit to Wikipedia'),
(2, 1, 'Value Test', 'Time to test your knowledge.', 'ValueTest', 'Correct! The darkest side and shadow would be in the left side of the cube, away from the sun.', 'Try again. Hint: Think about how light sources affect the dark and light sides on an object.', 'Apply values to the cube using the sun as your light source.', NULL);