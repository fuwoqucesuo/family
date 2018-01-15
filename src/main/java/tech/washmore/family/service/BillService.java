package tech.washmore.family.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tech.washmore.family.logic.*;
import tech.washmore.family.model.Bill;
import tech.washmore.family.model.view.BillView;

import java.util.List;

@Service
public class BillService {
    @Autowired
    private AddBillLogic addBillLogic;
    @Autowired
    private GetAllBillsLogic getAllBillsLogic;
    @Autowired
    private GetAllBillViewsLogic getAllBillViewsLogic;
    @Autowired
    private GetBillViewByIdLogic getBillViewByIdLogic;
    @Autowired
    private UpdateBillLogic updateBillLogic;

    public boolean addBill(Bill bill) {
        return addBillLogic.addBill(bill);
    }

    public List<Bill> getAllBilltypes() {
        return getAllBillsLogic.getAllBilltypes();
    }

    public List<BillView> getAllBillViews() {
        return getAllBillViewsLogic.getAllBillViews();
    }

    public BillView getBillViewById(int id) {
        return getBillViewByIdLogic.getBillViewById(id);
    }


    public boolean updateBill(Bill bill) {
        return updateBillLogic.updateBill(bill);
    }
}