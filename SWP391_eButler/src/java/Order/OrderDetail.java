/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Order;

import Service.Service;
import java.util.List;

/**
 *
 * @author Admin
 */
public class OrderDetail {

    private int ID;
    private int Order_ID;
    private int Service_ID;
    private int Price;
    private int Quantity;
    private String serName;
    private String accName;
    private String status;
    private String orderAddress;
    private String orderEmail;
    private String orderTime;

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    public String getOrderEmail() {
        return orderEmail;
    }

    public void setOrderEmail(String orderEmail) {
        this.orderEmail = orderEmail;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAccName() {
        return accName;
    }

    public void setAccName(String accName) {
        this.accName = accName;
    }

    public OrderDetail() {
    }

    public OrderDetail(int ID, int Order_ID, int Service_ID, int Price, int Quantity) {
        this.ID = ID;
        this.Order_ID = Order_ID;
        this.Service_ID = Service_ID;
        this.Price = Price;
        this.Quantity = Quantity;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getOrder_ID() {
        return Order_ID;
    }

    public void setOrder_ID(int Order_ID) {
        this.Order_ID = Order_ID;
    }

    public int getService_ID() {
        return Service_ID;
    }

    public void setService_ID(int Service_ID) {
        this.Service_ID = Service_ID;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public String getSerName() {
        return serName;
    }

    public void setSerName(String serName) {
        this.serName = serName;
    }

}
