# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Article.create(title: 'What is a knowledge base?',
               author: 'Giorgio Lucas',
               content_original: 'A knowledge base is a set of information about your product or service that one can go'\
                                 ' through to solve related problems or to learn how to use the product or service. A '\
                                 'modern knowledge base is usually a collection of articles that contain text, video, '\
                                 'images, etc and is available on the internet. It acts as the source of truth for the '\
                                 "product or service to its stakeholders like customers, employees, and partners.\n"\
                                 'Sometimes, it is a part of a company’s self-service portal. Sometimes, it is a part of '\
                                 'their website.')

Article.create(title: 'Advantages of creating a solid knowledge base',
               author: 'Steven Spilberto',
               content_original: 'A knowledge base is the one thing that can be instantly useful for both your support '\
                                 'agents and customers. Support agents can refer to the knowledge base and answer the '\
                                 'customer queries quickly instead of spending time asking someone for guidance or trying'\
                                 ' multiple solutions. Customers can search for answers to their questions in the '\
                                 "knowledge base instead of contacting support and waiting for a reply.\nNo matter how big"\
                                 ' or small your company is, no matter what industry you are in, you cannot go wrong with a'\
                                 ' knowledge base. After all, searching for answers online is second nature for most of '\
                                 ' your customers.')

Article.create(title: 'Where to start?',
               author: 'Mad Man',
               content_original: "Answer FAQs\nOff the top of your head, what are the things most customers ask your "\
                                 "support\?\nIf you are not sure, go through your support tickets from the past month "\
                                 '(or week, if your volume is huge). If that doesn’t give you enough information, find out '\
                                 'what your customers are searching for by looking at your search terms in Google Analytics.')
