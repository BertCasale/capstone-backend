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
(1, 3, '介紹', '線條是最基本的藝術元素之一。它們是大多數藝術作品的基礎。線條的特性可以在長度、方向和粗細上有所變化。', '無', NULL, NULL, NULL, NULL),
(1, 3, '匯聚線', '匯聚線，或者指向同一方向的線條，將您的目光引向它們相交的地方。', 'ConvergingLines', '正確！橋的線條、橋下的陰影、人行道，甚至遠處的建築，似乎都在引導您的注意力關注正在走路的夫婦。', '提示：跟隨橋和人行道的線條，找到它們匯聚的地方。', '在上面的圖像中，點擊匯聚線似乎引導您的目光的區域。', '《歐洲橋》，古斯塔夫·凱伊博特，1876\n圖片來源：維基百科'),
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