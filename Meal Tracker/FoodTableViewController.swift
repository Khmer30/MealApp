//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Joy Marie on 3/13/22.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        
        let firstBreakfastFood = Food(name: "Num Banh Chok", description: "Cook Cambodia Rice Noodle")
        let secondBreakfastFood = Food(name: "Green Fish Curry", description: "Consists of fish stewed with variety of spices in pot")
        let thirdBreakfastFood = Food(name: "Vege", description: "Clean fresh vege such as: mint leaves, bean sprouts, green beans, banana flowers, cucumber")
        let breakfast = Meal(name: "Breakfast", food: [firstBreakfastFood, secondBreakfastFood, thirdBreakfastFood])
        
        let firstLunchFood = Food(name: "Lok lak", description: " stir-fry utilizing beef")
        let secondLunchFood = Food(name: "Vege", description: "Clean fresh vege suhc as a bed of lettuce leaves is traditionally topped with cucumbers, tomatoes, raw onions, and stir-fried beef along with its juices")
        let thirdLunchFood = Food(name: "Rice", description: "Cook Rondol Rice")
        let lunch = Meal(name: "Lunch", food: [firstLunchFood, secondLunchFood, thirdLunchFood])
                                                     
        let firstDinnerFood = Food(name: "Lemongrass tea", description: "Mixture of lemon grass with lipton tea")
        let secondDinnerFood = Food(name: "Laffa Bread", description: "Heat a grill pan over medium-high heat, Brush with oil, and add a piece of laffa dough.")
        let thirdDinnerFood = Food(name: "Hummas", description: "Mixture smash chickpeas, sesame paste (tahini), garlic, and olive oil.")
        let dinner = Meal(name: "Dinner", food: [firstDinnerFood, secondDinnerFood, thirdDinnerFood])
                                                     
                                                     
        return[breakfast, lunch, dinner]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodcell", for: indexPath)
        
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection sections: Int) -> String? {
        return meals[sections].name

    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
