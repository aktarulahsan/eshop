
import 'package:e_shop/app/modules/home/model/latestProductImageModel.dart';
import 'package:e_shop/app/modules/home/model/messageModel.dart';
import 'package:e_shop/app/modules/home/model/notificationModel.dart';
import 'package:e_shop/app/modules/home/model/productModel.dart';
import 'package:e_shop/app/modules/home/model/shoppingCartModel.dart';
import 'package:flutter/material.dart';

final List<ShoppingCart> allShoppingCart = [
  ShoppingCart(
      image: 'assets/png/women_shoes.png',
      productName: 'Faux Sued Ankle Boots',
      size: '7',
      color: 'Hot Pink',
      price: 49.99,
      quantity: 1),
  ShoppingCart(
      image: 'assets/png/backpack.png',
      productName: 'Bottle Green Backpack',
      size: 'Medium',
      color: 'Green',
      price: 20.58,
      quantity: 1),
  ShoppingCart(
      image: 'assets/png/scarf.png',
      productName: 'Red Cotton Scarf',
      size: '2ft',
      color: 'Dark Red',
      price: 11.00,
      quantity: 1),
  ShoppingCart(
      image: 'assets/png/women_shoes.png',
      productName: 'Faux Sued Ankle Boots',
      size: '7',
      color: 'Hot Pink',
      price: 49.99,
      quantity: 1),
  ShoppingCart(
      image: 'assets/png/backpack.png',
      productName: 'Bottle Green Backpack',
      size: 'Medium',
      color: 'Green',
      price: 20.58,
      quantity: 1),
  ShoppingCart(
      image: 'assets/png/scarf.png',
      productName: 'Red Cotton Scarf',
      size: '2ft',
      color: 'Dark Red',
      price: 11.00,
      quantity: 1),
];


final List<double> sizes = [
  4.5,
  5.0,
  5.5,
  6.0,
  6.5,
  7,
  7.5,
  8.0,
  8.5,
  9,
];
final List<Color> colors = [
  Color(0xFFED5199),
  Color(0xFFFF8C69),
  Color(0xFF67B5F7),
  Color(0xFFFFFFFF),
  Color(0xFFC9C9C9),
  Color(0xFF3E3A3A)
];

final Map colorStringName = {
  0: 'Hot Pink',
  1: 'Yellow',
  2: 'Blue',
  3: 'White',
  4: 'Grey',
  5: 'Black'
};
final List<String> uploadImages = [
  'assets/png/pic0.png',
  'assets/png/pic1.png',
  'assets/png/pic2.png',
  'assets/png/pic3.png',
  'assets/png/pic4.png',
  'assets/png/pic0.png'
];
final List<List<String>> productImage = [
  ['assets/png/boots.png', 'assets/png/boots.png', 'assets/png/boots.png'],
  [
    'assets/png/backpack.png',
    'assets/png/backpack.png',
    'assets/png/backpack.png'
  ],
  ['assets/png/scarf.png', 'assets/png/scarf.png', 'assets/png/scarf.png'],
  ['assets/png/boots.png', 'assets/png/boots.png', 'assets/png/boots.png'],
  [
    'assets/png/backpack.png',
    'assets/png/backpack.png',
    'assets/png/backpack.png'
  ],
  ['assets/png/scarf.png', 'assets/png/scarf.png', 'assets/png/scarf.png'],
  ['assets/png/boots.png', 'assets/png/boots.png', 'assets/png/boots.png'],
  [
    'assets/png/backpack.png',
    'assets/png/backpack.png',
    'assets/png/backpack.png'
  ],
  ['assets/png/scarf.png', 'assets/png/scarf.png', 'assets/png/scarf.png'],
  [
    'assets/png/backpack.png',
    'assets/png/backpack.png',
    'assets/png/backpack.png'
  ],
];
final List<Reviews> comments = [
  Reviews(
      reviewStar: 4,
      reviewName: 'Jane Doe',
      comments:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      reviewImages: uploadImages,
      date: '10 Oct, 2018',
  ),
  Reviews(
      reviewStar: 5,
      reviewName: 'Sharif Ullah',
      comments:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      reviewImages: uploadImages,
      date: '7 Oct, 2018',
  ),
  Reviews(
      reviewStar: 3,
      reviewName: 'Tanvir Ahmed',
      comments:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      reviewImages: uploadImages,
      date: '10 Oct, 2018',
  ),
  Reviews(
      reviewStar: 1,
      reviewName: 'Rezwan Islam',
      comments:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      reviewImages: uploadImages,
      date: '7 Oct, 2018',
  ),
];
final List<LatestProductImageModel> latestProductImage = [
  LatestProductImageModel('assets/png/Base1.png', 'For all your summer clothing needs'),
  LatestProductImageModel('assets/png/Base2.png', 'For all your summer clothing needs'),
];
final List<ProductModel> allProduct = [
  ProductModel(
      productId: '0',
      images: productImage[0],
      productName: "Ankle Boots",
      price: 49.99,
      star: 4,
      brand: "Lily’s Ankle Boots",
      sku: "0590458902809",
      condition: "Brand New, With Box",
      material: "Faux Sued, Velvet",
      category: "Women Shoes",
      fitting: "True To Size",
      allColors: colors,
      sizes: sizes,
      reviews: comments,
  ),
  ProductModel(
      productId: '1',
      images: productImage[1],
      productName: "Backpack",
      price: 20.58,
      star: 3,
      brand: "The North Face",
      sku: "0590458902809",
      condition: "Brand New, With Box",
      material: "Faux Sued, Velvet",
      category: 'MEN\'S APPAREL',
      fitting: "True To Size",
      allColors: colors,
      sizes: sizes,
      reviews: comments),
  ProductModel(
      productId: '2',
      images: productImage[2],
      productName: "Red Scarf",
      price: 49.99,
      star: 4,
      brand: "Lily’s Ankle Boots",
      sku: "0590458902809",
      condition: "Brand New, With Box",
      material: "Faux Sued, Velvet",
      category: "Women Shoes",
      fitting: "True To Size",
      allColors: colors,
      sizes: sizes,
      reviews: comments),
  ProductModel(
      productId: '3',
      images: productImage[0],
      productName: "Faux Sued Ankle Boots",
      price: 49.99,
      star: 4,
      brand: "Lily’s Ankle Boots",
      sku: "0590458902809",
      condition: "Brand New, With Box",
      material: "Faux Sued, Velvet",
      category: "Women Shoes",
      fitting: "True To Size",
      allColors: colors,
      sizes: sizes,
      reviews: comments),
  ProductModel(
      productId: '4',
      images: productImage[1],
      productName: "Backpack",
      price: 20.58,
      star: 3,
      brand: "The North Face",
      sku: "0590458902809",
      condition: "Brand New, With Box",
      material: "Faux Sued, Velvet",
      category: 'MEN\'S APPAREL',
      fitting: "True To Size",
      allColors: colors,
      sizes: sizes,
      reviews: comments),
  ProductModel(
      productId: '5',
      images: productImage[2],
      productName: "Red Scarf",
      price: 49.99,
      star: 4,
      brand: "Lily’s Ankle Boots",
      sku: "0590458902809",
      condition: "Brand New, With Box",
      material: "Faux Sued, Velvet",
      category: "Women Shoes",
      fitting: "True To Size",
      allColors: colors,
      sizes: sizes,
      reviews: comments),
];


final List<MessageModel>  messages = [
  MessageModel(userName: 'Muhammad Sharif Ullah', date: '9:20 AM', lastMessage: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),
  MessageModel(userName: 'MD Tanvir Siddique', date: '8:12 AM', lastMessage: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco… '),
  MessageModel(userName: 'Rezwan Islam', date: 'Yesterday', lastMessage: 'Laboris nisi ut aliquip ex ea commodo consequat.'),
  MessageModel(userName: 'Mehedi Hassan', date: '15 Sep', lastMessage: 'Duis aute irure dolor in reprehenderit in voluptate velit '),
  MessageModel(userName: 'Muhammad Sharif Ullah', date: '9:20 AM', lastMessage: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),
  MessageModel(userName: 'MD Tanvir Siddique', date: '8:12 AM', lastMessage: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco… '),
  MessageModel(userName: 'Rezwan Islam', date: 'Yesterday', lastMessage: 'Laboris nisi ut aliquip ex ea commodo consequat.'),
  MessageModel(userName: 'Mehedi Hassan', date: '15 Sep', lastMessage: 'Duis aute irure dolor in reprehenderit in voluptate velit '),
  MessageModel(userName: 'Muhammad Sharif Ullah', date: '9:20 AM', lastMessage: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),
  MessageModel(userName: 'MD Tanvir Siddique', date: '8:12 AM', lastMessage: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco… '),
  MessageModel(userName: 'Rezwan Islam', date: 'Yesterday', lastMessage: 'Laboris nisi ut aliquip ex ea commodo consequat.'),
  MessageModel(userName: 'Mehedi Hassan', date: '15 Sep', lastMessage: 'Duis aute irure dolor in reprehenderit in voluptate velit '),
];

final List<NotificationModel> notifications = [
  NotificationModel(image: 'assets/svg/icons/icon1.svg', title: '9:20 AM', isViewed:  false,time: '' ,body: 'Smiley’s Store marked your order #1982984 as shipped.'),
  NotificationModel(image: 'assets/svg/icons/icon2.svg', title: 'Yesterday', isViewed:  false,time: '' ,body: 'Package from your order #1982345 has arrived to destination country.'),
  NotificationModel(image: 'assets/svg/icons/icon3.svg', title: '15 Oct', isViewed:  false,time: '' ,body: '50% OFF of everything at Elegance Store!!'),
  NotificationModel(image: 'assets/svg/icons/icon4.svg', title: '20 Sep', isViewed:  false,time: '' ,body: 'BOGO Sale starting tomorrow. Don’t forget to check it out for great deals!'),
];
