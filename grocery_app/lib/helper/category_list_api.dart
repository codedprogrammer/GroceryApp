import 'package:orilla_fresca_app/helper/appcolors.dart';
import 'package:orilla_fresca_app/helper/iconhelper.dart';
import 'package:orilla_fresca_app/models/category.dart';
import 'package:orilla_fresca_app/models/subcategory.dart';

class CategoryListAPI {
  static List<Category> getMockedCategories() {
    return [
      Category(
        color: AppColors.MEATS,
        icon: IconFontHelper.MEATS,
        imageName: 'cat1',
        name: 'Meats',
        subCategories: [
          SubCategory(
            color: AppColors.MEATS,
            name: 'Pork',
            imageName: 'cat1_1',
            icon: IconFontHelper.MEATS
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: 'Hen',
            imageName: 'cat1_2',
            icon: IconFontHelper.MEATS
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: 'Cow',
            imageName: 'cat1_3',
            icon: IconFontHelper.MEATS
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: 'Turkey',
            imageName: 'cat1_4',
            icon: IconFontHelper.MEATS
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: 'Goat',
            imageName: 'cat1_5',
            icon: IconFontHelper.MEATS
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: 'Rabbit',
            imageName: 'cat1_6',
            icon: IconFontHelper.MEATS
          ),

        ],
      ),
      Category(
        color: AppColors.FRUITS,
        icon: IconFontHelper.FRUITS,
        imageName: 'cat2',
        name: 'Fruits',
        subCategories: [],
      ),
      Category(
        color: AppColors.VEGS,
        icon: IconFontHelper.VEGS,
        imageName: 'cat3',
        name: 'Vegetables',
        subCategories: [],
      ),
      Category(
        color: AppColors.SEEDS,
        icon: IconFontHelper.SEEDS,
        imageName: 'cat4',
        name: 'Seeds',
        subCategories: [],
      ),
      Category(
        color: AppColors.PASTRIES,
        icon: IconFontHelper.PASTRIES,
        imageName: 'cat5',
        name: 'Pastries',
        subCategories: [],
      ),
      Category(
        color: AppColors.SPICES,
        icon: IconFontHelper.SPICES,
        imageName: 'cat6',
        name: 'Spices',
        subCategories: [],
      ),
    ];
  }
}
