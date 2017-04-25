# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "123",
             password_confirmation: "123")

User.create!(name:  "Chandra",
             email: "chandraminato@yahoo.co.id",
             password:              "123",
             password_confirmation: "123")

User.create!(name:  "Contoh aja",
             email: "contohaja@railstutorial.org",
             password:              "123",
             password_confirmation: "123")

Tag.create!(name:  "Food")
Tag.create!(name:  "Sport")
Tag.create!(name:  "Lifestyle")
Tag.create!(name:  "Travel")
Tag.create!(name:  "Love")

Blog.create!(title: "Vegetarian menus",
            summary: "Yay, here's the list",
            content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?

            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?",
            user_id: 2,
            title_image_url: "http://www.nutritionforest.com/media/wysiwyg/prodisimage/Veggie-Vite-Multi-Vitamin-Complex.jpg",
            commentable: "Yes")

Blog.create!(title: "Liverpool Loose Again",
            summary: "Not a shocking news",
            content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?

            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?",
            user_id: 2,
            title_image_url: "http://assets.bluefingroup.co.uk/media/filer_public_thumbnails/filer_public/30/dc/30dcb5b3-815d-4e4c-af3e-d2823050911c/sports_montage_-_chosen_concept_v9_carouselv3_rgb.jpg__1600x580_q85_crop_upscale.jpg",
            commentable: "Yes")

Blog.create!(title: "New Instagram Features",
            summary: "Uwow, really?",
            content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?

            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?",
            user_id: 2,
            title_image_url: "https://www.adb.org/sites/default/files/styles/content_media/public/content-media/11707-infrastructure-technology-asia.jpg?itok=QaxTjfgQ",
            commentable: "Yes")

Blog.create!(title: "Forever Alone No More",
            summary: "Don't you sick of being jombs?",
            content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?

            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?",
            user_id: 2,
            title_image_url: "https://assets.merriam-webster.com/mw/images/article/art-wap-landing-mp-lg/love-valentines-day-79@1x.jpg",
            commentable: "Yes")

Blog.create!(title: "Visit Bangka Island",
            summary: "No Regret, Really!",
            content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?

            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?",
            user_id: 2,
            title_image_url: "http://blog.builtinperl.com/uploads/covers/B51ED61A-0ED0-11E7-BF5A-982D4C690F48.jpg",
            commentable: "Yes")

Blog.create!(title: "Eating Wood is bad",
            summary: "You Don't Say Dude",
            content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?

            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?",
            user_id: 2,
            title_image_url: "http://www.nutritionforest.com/media/wysiwyg/prodisimage/Veggie-Vite-Multi-Vitamin-Complex.jpg",
            commentable: "Yes")

Blog.create!(title: "Thailand Secret Destination",
            summary: "Not a Secret Anymore",
            content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?

            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?",
            user_id: 2,
            title_image_url: "http://blog.builtinperl.com/uploads/covers/B51ED61A-0ED0-11E7-BF5A-982D4C690F48.jpg",
            commentable: "Yes")

Blog.create!(title: "10 Sign You're Going to Hell",
            summary: "Damn, I got All of This",
            content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?

            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?",
            user_id: 2,
            title_image_url: "https://www.adb.org/sites/default/files/styles/content_media/public/content-media/11707-infrastructure-technology-asia.jpg?itok=QaxTjfgQ",
            commentable: "Yes")

Blog.create!(title: "Love Me!!!",
            summary: "Story of Young Man Who Desperate of Love",
            content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?\

            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?",
            user_id: 2,
            title_image_url: "https://assets.merriam-webster.com/mw/images/article/art-wap-landing-mp-lg/love-valentines-day-79@1x.jpg",
            commentable: "Yes")

Blog.create!(title: "Basketball is a Kind of Sport",
            summary: "Even My Grandmother Know it",
            content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?

            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?",
            user_id: 2,
            title_image_url: "http://assets.bluefingroup.co.uk/media/filer_public_thumbnails/filer_public/30/dc/30dcb5b3-815d-4e4c-af3e-d2823050911c/sports_montage_-_chosen_concept_v9_carouselv3_rgb.jpg__1600x580_q85_crop_upscale.jpg",
            commentable: "Yes")


Tagging.create!(
            blog_id: 1,
            tag_id: 1,
            )

Tagging.create!(
            blog_id: 2,
            tag_id: 2,
            )

Tagging.create!(
            blog_id: 3,
            tag_id: 3,
            )

Tagging.create!(
            blog_id: 4,
            tag_id: 5,
            )

Tagging.create!(
            blog_id: 5,
            tag_id: 4,
            )

Tagging.create!(
            blog_id: 6,
            tag_id: 1,
            )

Tagging.create!(
            blog_id: 7,
            tag_id: 4,
            )

Tagging.create!(
            blog_id: 8,
            tag_id: 3,
            )

Tagging.create!(
            blog_id: 9,
            tag_id: 5,
            )

Tagging.create!(
            blog_id: 10,
            tag_id: 2,
            )