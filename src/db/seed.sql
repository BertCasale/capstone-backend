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
(5, 'عناصر الفن', 'اللون', '20 دقيقة', 'سهل', 'ابدأ في إنشاء فن أكثر معنىً عن طريق تعلم الألوان', 'ألوان ملونة، ورقة', 'لا شيء'),
(6, 'Elementos de Arte', 'Linhas', '15 minutos', 'Muito fácil', 'Comece com o básico da arte, aprendendo sobre linhas', 'Caneta ou lápis, papel', 'Nenhum'),
(6, 'Elementos de Arte', 'Valor', '10 minutos', 'Muito fácil', 'Aprenda outro conceito básico da arte, o valor', 'Caneta ou lápis, papel', 'Nenhum'),
(6, 'Elementos de Arte', 'Cor', '20 minutos', 'Fácil', 'Comece a criar arte mais significativa aprendendo sobre cores', 'Lápis de cor, papel', 'Nenhum'),
(7, 'Unsur Seni', 'Garis', '15 Menit', 'Sangat Mudah', 'Mulai dengan dasar seni dengan mempelajari tentang garis', 'Pulpen atau pensil, kertas', 'Tidak ada'),
(7, 'Unsur Seni', 'Nilai', '10 Menit', 'Sangat Mudah', 'Pelajari unsur dasar seni lainnya, yaitu nilai', 'Pulpen atau pensil, kertas', 'Tidak ada'),
(7, 'Unsur Seni', 'Warna', '20 Menit', 'Mudah', 'Mulai membuat seni yang lebih berarti dengan mempelajari warna', 'Pensil warna, kertas', 'Tidak ada'),
(8, 'Éléments d''Art', 'Lignes', '15 minutes', 'Très facile', 'Commencez par les bases de l''art en apprenant les lignes', 'Stylo ou crayon, papier', 'Aucun'),
(8, 'Éléments d''Art', 'Valeur', '10 minutes', 'Très facile', 'Apprenez un autre concept de base de l''art, la valeur', 'Stylo ou crayon, papier', 'Aucun'),
(8, 'Éléments de l''Art', 'Couleur', '20 Minutes', 'Facile', 'Commencez à créer de l''art plus significatif en apprenant les couleurs.', 'Crayons de Couleur, Papier', 'Aucun'),
(9, '芸術の要素', '線', '15 分', '非常に簡単', '線について学んで芸術の基本を始めましょう', 'ペンまたは鉛筆、紙', 'なし'),
(9, '芸術の要素', 'バリュー', '10 分', '非常に簡単', 'もう一つの芸術の基本、バリューを学びましょう', 'ペンまたは鉛筆、紙', 'なし'),
(9, '芸術の要素', 'カラー', '20 分', '簡単', '色を学ぶことで、より意味のあるアートを始めましょう', '色鉛筆、紙', 'なし'),
(9, 'Элементы Искусства', 'Линии', '15 Минут', 'Очень Просто', 'Начните с основ искусства, изучая линии', 'Ручка или карандаш, Бумага', 'Ничего'),
(10, 'Элементы Искусства', 'Значение', '10 Минут', 'Очень Просто', 'Учите еще один базовый элемент искусства - значение', 'Ручка или карандаш, Бумага', 'Ничего'),
(10, 'Элементы Искусства', 'Цвет', '20 Минут', 'Легко', 'Начните создавать более значимое искусство, изучая цвета', 'Цветные карандаши, Бумага', 'Ничего'),
(11, 'Elemente der Kunst', 'Linien', '15 Minuten', 'Sehr Einfach', 'Beginnen Sie mit den Grundlagen der Kunst, indem Sie Linien lernen', 'Stift oder Bleistift, Papier', 'Keine'),
(11, 'Elemente der Kunst', 'Wert', '10 Minuten', 'Sehr Einfach', 'Lernen Sie ein weiteres Grundkonzept der Kunst, den Wert', 'Stift oder Bleistift, Papier', 'Keine'),
(11, 'Elemente der Kunst', 'Farbe', '20 Minuten', 'Einfach', 'Beginnen Sie, aussagekräftigere Kunstwerke zu schaffen, indem Sie Farben lernen', 'Buntstifte, Papier', 'Keine');

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
(2, 1, 'Value Test', 'Time to test your knowledge.', 'ValueTest', 'Correct! The darkest side and shadow would be in the left side of the cube, away from the sun.', 'Try again. Hint: Think about how light sources affect the dark and light sides on an object.', 'Apply values to the cube using the sun as your light source.', NULL),
(1, 2, '介绍', '线条是最基本的艺术元素之一。它们是大多数艺术作品的基础。线条的特性可以在长度、方向和粗细上有所变化。', '无', NULL, NULL, NULL, NULL),
(1, 2, '汇聚线', '汇聚线，或者指向同一方向的线条，将您的目光引向它们相交的地方。', 'ConvergingLines', '正确！桥的线条、桥下的阴影、人行道，甚至远处的建筑，似乎都在引导您的注意力关注正在走路的夫妇。', '提示：跟随桥和人行道的线条，找到它们汇聚的地方。', '在上面的图像中，点击汇聚线似乎引导您的目光的区域。', '《欧洲桥》，古斯塔夫·凯伊博特，1876\n图片来源：维基百科'),
(1, 2, '水平线', '线条的方向有许多不同的含义。\n水平线，或者从左到右移动的线条，给人一种平静、休息、停滞或悲伤的感觉。', 'HorizontalLines', '地平线是水平线的最佳示例之一。在这种情况下，它代表了停滞和悲伤。', NULL, '将线条放在图像中明显的水平线上。', '《海边的僧侣》，卡斯帕·大卫·弗里德里希，1808-10\n图片来源：维基百科'),
(1, 2, '垂直线', '垂直线，或者从上到下移动的线条，给人一种高度、力量或稳定感。', 'VerticalLines', '建筑和建筑是垂直线的绝佳示例。图像中的支柱代表了力量和稳定性。', NULL, '将线条放在图像中一些明显的垂直线上。', '圣巴沃教堂的唱诗班和北侧走廊，皮特·詹斯，1634\n图片来源：Getty'),
(1, 2, '对角线', '对角线线条给人一种运动和不稳定感。', 'DiagonalLines', '秋千的绳子是对角线，表明秋千在摆动。图像中还有更微妙的对角线，比如左下方掉下的男人的胳膊和被抛向空中的鞋子。', NULL, '将线条放在图像中一些明显的对角线上。', '秋千，让·奥诺雷·弗拉冈纳，1767-8\n图片来源：维基百科'),
(1, 2, '弯曲线', '弯曲线给人一种流动性、柔软性、动荡性或混乱感。', 'CurvedLines', '弯曲线显示出水在大浪中流动，代表流动性和动荡。', NULL, '将线条放在图像中一些明显的弯曲线上。', '神奈川冲浪里的大浪，葛饰北斋，1831\n图片来源：维基百科'),
(1, 2, '锯齿线', '锯齿线给人一种不安、焦虑或兴奋感。', 'ZigzagLines', '在早期文明中，锯齿线常常被用作警告标志。然而，在这种情况下，它们可能被用来象征水进入锅中。', NULL, '将线条放在图像中带有锯齿线的区域。', '带锯齿图案的罐，约公元前3500-3300年\n图片来源：布鲁克林博物馆'),
(1, 2, '线条测试', '现在是测试你知识的时候了。', 'LinesTest', '正确！在第一张图中，桅杆和船的背面的对角线线条，以及海浪的弯曲线条，表明船正在移动。第二张图使用垂直线来表示船只的桅杆，以显示它们静止不动。', '再试一次。提示：回想一下垂直和对角线线条的含义。', '选择上面哪幅艺术品更具有运动感。', '起风了（顺风），温斯洛·霍默，1873-1876\n图片来源：维基百科\n阿让特伊纳的红船，克劳德·莫奈，1875\n图片来源：维基百科'),
(2, 2, '介绍', '价值观基本上是指某物有多明亮或多暗。在了解颜色之前，您应该了解黑色和白色。图像中的价值观可以帮助设定图像的情感或创建具有深度的图像。', 'none', NULL, NULL, NULL, NULL),
(2, 2, '光源', '知道光来自哪个方向，或者您的光源，对于了解如何正确放置图像中的阴影以赋予其深度感至关重要。面向光源的物体一侧会更亮，而背离光源的一侧会更暗。', 'LightSourceValue', '正确！她头后、脖子和衬衫的背面较暗，因为它们背对光源，而她的脸和衬衫的前面较亮，因为它们面向光源。她耳环和眼睛中的反光也显示出光源在左边。', '找到最暗和最亮的区域，并考虑它们所在的一侧。', '选择图像中光源所在的一侧。', '戴珍珠耳环的少女，约翰内斯·维梅尔，约1665\n图片来源：维基百科'),
(2, 2, '灰度', '白色是最亮的颜色，黑色是最暗的颜色，它们之间直接的中间灰色。只使用黑色、白色和灰色制作的图像是灰度图像。', 'GrayscaleValue', '通过混合不同量的黑色和白色，您可以得到不同深浅的灰色。', NULL, '将灰度值按从最亮到最暗的顺序排列。', NULL),
(2, 2, '情感', '拥有大量明亮或暗淡的价值观可以改变艺术作品的情感。光常常代表着善良、秩序和生命，而黑暗通常代表邪恶、混乱和死亡。', 'MoodValue', '正确！艺术家用黑暗环绕人物来营造出恐惧、悲伤和绝望的感觉。', '考虑一下光与暗相比有多少。一个是包围另一个吗？', '点击两种艺术家似乎试图传达的情感中的2种。', '即将发生的悲伤，弗朗西斯科·戈雅，1810\n图片来源：维基百科'),
(2, 2, '价值观测试', '现在是测试你知识的时候了。', 'ValueTest', '正确！最暗的一侧和阴影会在立方体的左侧，远离太阳。', '再试一次。提示：思考光源如何影响物体的暗面和明面。', '使用太阳作为光源将价值观应用于立方体。', NULL),
(1, 3, '介紹', '線條是最基本的藝術元素之一。它們是大多數藝術作品的基礎。線條的特性可以在長度、方向和粗細上有所變化。', '無', NULL, NULL, NULL, NULL),
(1, 3, '匯聚線', '匯聚線，或者指向同一方向的線條，將您的目光引向它們相交的地方。', 'ConvergingLines', '正確！橋的線條、橋下的陰影、人行道，甚至遠處的建築，似乎都在引導您的注意力關注正在走路的夫婦。', '提示：跟隨橋和人行道的線條，找到它們匯聚的地方。', '在上面的圖像中，點擊匯聚線似乎引導您的目光的區域。', '《歐洲橋》，古斯塔夫·凱伊博特，1876\n圖片來源：維基百科'),
(1, 3, '水平線', '線的方向具有多種不同的含義。\n水平線，或者從左到右移動的線條，給人一種平靜、休息、停滯或悲傷的感覺。', 'HorizontalLines', '地平線是水平線的最佳示例之一。在這種情況下，它代表停滯和悲傷。', NULL, '將線條放在圖像中明顯的水平線上。', '《大海邊的僧侶》，卡斯帕·大衛·弗里德里希，1808-10\n圖像來源：維基百科'),
(1, 3, '垂直線', '垂直線，或者從上到下移動的線條，給人一種高度、力量或穩定感。', 'VerticalLines', '建築和建築是垂直線的絕佳示例。圖像中的支柱代表力量和穩定性。', NULL, '將線條放在圖像中一些明顯的垂直線上。', '聖巴沃教堂唱詩班和北廊，哈勒姆的彼得·揚茨，1634\n圖像來源：Getty'),
(1, 3, '對角線', '對角線線條給人一種運動和不穩定感。', 'DiagonalLines', '秋千的繩子是對角線，表明秋千在擺動。圖像中還有更微妙的對角線，如左下方掉下的男人手臂和被拋向空中的鞋子。', NULL, '將線條放在圖像中一些明顯的對角線上。', '秋千，讓·奧諾雷·弗拉岡納，1767-8\n圖像來源：維基百科'),
(1, 3, '彎曲線', '彎曲線給人一種流動性、柔軟性、動盪或混亂感。', 'CurvedLines', '這些彎曲的線條展示了大浪中的水流動，代表著流動性和動盪。', NULL, '將這些線條放在圖像中一些突出的彎曲線上。', '神奈川沖浪里的大浪，葛飼北斎，1831\n圖像來源：維基百科'),
(1, 3, '之字形線條', '之字形線條給人一種不安、焦慮或興奮感。', 'ZigzagLines', '在早期文明中，之字形線條經常被用作警告標誌。然而，在這種情況下，它們可能被用來象徵水流入壺中。', NULL, '將這些線條放在圖像中帶有之字形線條的區域。', '帶之字形圖案的罐子，公元前約3500-3300年\n圖像來源：布魯克林博物館'),
(1, 3, '線條測試', '是測試您知識的時候了。', 'LinesTest', '正確！在第一張圖中，桅杆和船的背面的對角線線條，以及海浪的彎曲線條，顯示出船在移動。第二張圖使用垂直線來表示船的桅杆，以顯示它們靜止不動。', '再試一次。提示：回想一下垂直和對角線線條的含義。', '選擇上面哪幅藝術品具有更強烈的運動感。', '起風了（順風），溫斯洛·荷馬，1873-1876\n圖像來源：維基百科\n阿爾讓特伊的紅船，克勞德·莫內，1875\n圖像來源：維基百科'),
(2, 3, '介紹', '價值基本上是某物有多明亮或多黑暗的概念。在理解顏色之前，您應該了解黑色和白色。圖像中的值可以幫助設定圖像的情感或創建具有深度的圖像。', 'none', NULL, NULL, NULL, NULL),
(2, 3, '光源', '了解光來自哪個方向，或者您的光源，對於理解如何正確地放置影子以賦予圖像深度非常重要。物體的光源面將更亮，而面對遠離的一面將更暗。', 'LightSourceValue', '正確！她頭部、頸部和襯衫的背面較暗，因為它們遠離光源，而她的臉和襯衫的正面較亮，因為它們面向光源。她耳環和眼睛的反射也顯示光源在左側。', '找到最暗和最亮的區域，考慮它們所在的邊。', '選擇圖像中光源所在的那一側。', '戴珍珠耳環的少女，約翰內斯·維梅爾，約1665年\n圖像來源：維基百科'),
(2, 3, '灰度', '白色是最亮的顏色，黑色是最暗的顏色，它們之間直接的中間灰色。只使用黑色、白色和灰色制作的圖像是灰度圖像。', 'GrayscaleValue', '通過混合不同量的黑色和白色，您可以得到不同深淺的灰色。', NULL, '將灰度值按從最亮到最暗的順序排列。', NULL),
(2, 3, '情感', '擁有大量明亮或暗淡的價值觀可以改變藝術作品的情感。光通常代表善良、秩序和生命，而黑暗通常代表邪惡、混亂和死亡。', 'MoodValue', '正確！藝術家在周圍環繞人物的地方使用黑暗，以營造恐懼、悲傷和絕望的感覺。', '考慮一下光與暗相比有多少。一個是否包圍另一個？', '點擊藝術家似乎試圖傳達的情感中的2種。', '即將發生的不祥預兆，弗朗西斯科·戈雅，1810年\n圖像來源：維基百科'),
(2, 3, '價值觀測試', '現在是測試您知識的時候了。', 'ValueTest', '正確！最暗的一側和陰影會在立方體的左側，遠離太陽。', '再試一次。提示：思考光源如何影響物體的暗面和明面。', '使用太陽作為您的光源為立方體應用價值觀。', NULL),
(1, 4, 'Introducción', 'Las líneas son uno de los elementos más básicos del arte. Son la base subyacente de la mayoría del arte. Las cualidades de una línea pueden variar en longitud, dirección y grosor.', 'ninguna', NULL, NULL, NULL, NULL),
(1, 4, 'Líneas Convergentes', 'Las líneas convergentes, o líneas que apuntan en la misma dirección, dirigen tu mirada hacia el punto donde se encuentran.', 'ConvergingLines', '¡Correcto! Las líneas del puente, la sombra del puente, la acera e incluso el edificio en segundo plano parecen dirigir tu atención hacia la pareja que camina.', 'Pista: Sigue las líneas del puente y la acera para encontrar el área donde se encuentran.', 'En la imagen de arriba, haz clic en la zona a la que las líneas convergentes parecen dirigir tu mirada.', 'El Puente de Europa, Gustave Caillebotte, 1876\nCrédito de la imagen a Wikipedia'),
(1, 5, 'مقدمة', 'الخطوط هي واحدة من أبسط عناصر الفن. إنها الأساس الكامن وراء معظم الأعمال الفنية. تتغير خصائص الخط بالطول والاتجاه والسمك.', 'لا شيء', NULL, NULL, NULL, NULL),
(1, 5, 'الخطوط المتلاقية', 'الخطوط المتلاقية، أو الخطوط التي تشير في نفس الاتجاه، تجذب نظرك إلى النقطة التي تلتقي فيها.', 'ConvergingLines', 'صحيح! خطوط الجسر، وظل الجسر، والرصيف، وحتى المبنى في الخلف يبدو أنها توجه انتباهك نحو الزوج الذي يمشي.', 'تلميح: اتبع خطوط الجسر والرصيف للعثور على المنطقة التي تتقاطع فيها.', 'في الصورة أعلاه، انقر على المنطقة التي تبدو الخطوط المتلاقية توجيه نظرك نحوها.', 'جسر أوروبا، غوستاف كايلبوت، 1876\nصورة مُقدَّمة من ويكيبيديا'),
(1, 6, 'Introdução', 'As linhas são um dos elementos mais básicos da arte. Elas são o alicerce subjacente da maioria das obras de arte. As características de uma linha podem variar em comprimento, direção e espessura.', 'nenhuma', NULL, NULL, NULL, NULL),
(1, 6, 'Linhas Convergentes', 'Linhas convergentes, ou linhas que apontam na mesma direção, direcionam seu olhar para o ponto onde se encontram.', 'LinhasConvergentes', 'Correto! As linhas da ponte, a sombra da ponte, a calçada e até mesmo o prédio ao fundo parecem direcionar sua atenção para o casal que está caminhando.', 'Dica: Siga as linhas da ponte e da calçada para encontrar a área onde elas se encontram.', 'Na imagem acima, clique na área para a qual as linhas convergentes parecem estar direcionando seu olhar.', 'Le Pont de l''Europe, Gustave Caillebotte, 1876\nCrédito da imagem para Wikipedia'),
(1, 7, 'Pengantar', 'Garis adalah salah satu elemen seni yang paling dasar. Mereka adalah dasar yang mendasari sebagian besar seni. Kualitas dari sebuah garis dapat bervariasi dalam panjang, arah, dan ketebalan.', 'tidak ada', NULL, NULL, NULL, NULL),
(1, 7, 'Garis Konvergen', 'Garis konvergen, atau garis yang mengarah ke arah yang sama, menarik perhatian mata Anda ke titik di mana mereka bertemu.', 'GarisKonvergen', 'Benar! Garis-garis jembatan, bayangan jembatan, trotoar, dan bahkan bangunan di belakang sepertinya mengarahkan perhatian Anda pada pasangan yang sedang berjalan.', 'Petunjuk: Ikuti garis-garis jembatan dan trotoar untuk menemukan area di mana mereka bertemu.', 'Pada gambar di atas, klik pada area yang garis-garis konvergen tampaknya mengarahkan mata Anda.', 'Le Pont de l''Europe, Gustav Caillebotte, 1876\nKredit gambar ke Wikipedia'),
(1, 8, 'Introduction', 'Les lignes sont l''un des éléments les plus fondamentaux de l''art. Elles sont le fondement sous-jacent de la plupart des œuvres d''art. Les caractéristiques d''une ligne peuvent varier en longueur, en direction et en épaisseur.', 'aucun', NULL, NULL, NULL, NULL),
(1, 8, 'Lignes Convergentes', 'Les lignes convergentes, ou les lignes qui pointent dans la même direction, attirent votre regard vers le point où elles se rencontrent.', 'LignesConvergentes', 'Correct ! Les lignes du pont, l''ombre du pont, le trottoir, et même le bâtiment à l''arrière semblent diriger votre attention vers le couple qui marche.', 'Astuce : Suivez les lignes du pont et du trottoir pour trouver la zone où elles se rencontrent.', 'Sur l''image ci-dessus, cliquez sur la zone vers laquelle les lignes convergentes semblent diriger votre regard.', 'Le Pont de l''Europe, Gustave Caillebotte, 1876\nCrédit image à Wikipedia'),
(1, 9, 'はじめに', '線は最も基本的な芸術の要素の1つです。それらはほとんどの芸術の基盤です。線の特性は長さ、方向、太さで異なることがあります。', 'なし', NULL, NULL, NULL, NULL),
(1, 9, '収束する線', '収束する線、または同じ方向を指す線は、それらが交差する点に目を引き寄せます。', '収束する線', '正解です！橋の線、橋の影、歩道、さらには背後の建物までが、あたなの注意を歩いているカップルに向けているように見えます。', 'ヒント：橋と歩道の線に従って、それらが交差する場所を見つけてください。', '上の画像で、収束する線があなたの目を向けている領域をクリックしてください。', 'ル・ポン・ド・リュロップ、グスタフ・カイユボット、1876\n画像提供：ウィキペディア'),
(1, 10, 'Введение', 'Линии - один из самых основных элементов искусства. Они являются основой большинства произведений искусства. Качества линии могут изменяться в длине, направлении и толщине.', 'нет', NULL, NULL, NULL, NULL),
(1, 10, 'Сходящиеся линии', 'Сходящиеся линии, или линии, указывающие в одном направлении, привлекают взгляд к точке их схождения.', 'СходящиесяЛинии', 'Верно! Линии моста, тень моста, тротуар и даже здание сзади, кажется, направляют ваше внимание на пару, идущую пешком.', 'Подсказка: Следуйте за линиями моста и тротуара, чтобы найти место их схождения.', 'На изображении выше щелкните по области, на которую сходящиеся линии кажутся направляющими ваши глаза.', 'Ле Пон де л''Европ, Гюстав Кайльбот, 1876\nИзображение предоставлено Википедией'),
(1, 11, 'Einführung', 'Linien sind eines der grundlegendsten Gestaltungselemente. Sie bilden die zugrunde liegende Grundlage der meisten Kunstwerke. Die Eigenschaften einer Linie können in Länge, Richtung und Dicke variieren.', 'keine', NULL, NULL, NULL, NULL),
(1, 11, 'Konvergierende Linien', 'Konvergierende Linien, oder Linien, die in die gleiche Richtung weisen, lenken Ihren Blick auf den Punkt, an dem sie sich treffen.', 'KonvergierendeLinien', 'Richtig! Die Linien der Brücke, der Brückenschatten, des Gehwegs und sogar des Gebäudes im Hintergrund scheinen Ihre Aufmerksamkeit auf das spazierende Paar zu lenken.', 'Hinweis: Folgen Sie den Linien der Brücke und des Gehwegs, um die Stelle zu finden, an der sie sich treffen.', 'Auf dem obigen Bild klicken Sie auf den Bereich, auf den die konvergierenden Linien Ihre Aufmerksamkeit lenken.', 'Le Pont de l''Europe, Gustav Caillebote, 1876\nBildnachweis: Wikipedia');