import 'package:orilla_fresca_app/helper/appcolors.dart';
import 'package:orilla_fresca_app/helper/iconhelper.dart';
import 'package:orilla_fresca_app/models/category.dart';

class CategoryListAPI {
  static List<Category> getMockedCategories() {
    return [
      Category(
        color: AppColors.MEATS,
        icon: IconFontHelper.MEATS,
        imageName: 'cat1',
        name: 'Meats',
        subCategories: [],
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
