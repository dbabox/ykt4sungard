package com.sungard.smartcard.bccsvr.modules.operator.domain;

import com.sungard.smartcard.annotation.TransfersNodeOut;
import com.sungard.smartcard.annotation.TransfersNodeType;

public class TransdtlKey {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRANSDTL.ACCDATE
     *
     * @mbggenerated Wed Jan 04 11:34:58 CST 2012
     */
    @TransfersNodeOut(value = TransfersNodeType.sbranch_code1, desc = "")
    private String accdate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRANSDTL.TERMID
     *
     * @mbggenerated Wed Jan 04 11:34:58 CST 2012
     */
    @TransfersNodeOut(value = TransfersNodeType.damt12, desc = "")
    private Double termid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TRANSDTL.TERMSEQNO
     *
     * @mbggenerated Wed Jan 04 11:34:58 CST 2012
     */
    @TransfersNodeOut(value = TransfersNodeType.damt13, desc = "")
    private Double termseqno;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TRANSDTL.ACCDATE
     *
     * @return the value of T_TRANSDTL.ACCDATE
     * @mbggenerated Wed Jan 04 11:34:58 CST 2012
     */
    public String getAccdate() {
        return accdate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TRANSDTL.ACCDATE
     *
     * @param accdate the value for T_TRANSDTL.ACCDATE
     * @mbggenerated Wed Jan 04 11:34:58 CST 2012
     */
    public void setAccdate(String accdate) {
        this.accdate = accdate == null ? null : accdate.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TRANSDTL.TERMID
     *
     * @return the value of T_TRANSDTL.TERMID
     * @mbggenerated Wed Jan 04 11:34:58 CST 2012
     */
    public Double getTermid() {
        return termid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TRANSDTL.TERMID
     *
     * @param termid the value for T_TRANSDTL.TERMID
     * @mbggenerated Wed Jan 04 11:34:58 CST 2012
     */
    public void setTermid(Double termid) {
        this.termid = termid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TRANSDTL.TERMSEQNO
     *
     * @return the value of T_TRANSDTL.TERMSEQNO
     * @mbggenerated Wed Jan 04 11:34:58 CST 2012
     */
    public Double getTermseqno() {
        return termseqno;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TRANSDTL.TERMSEQNO
     *
     * @param termseqno the value for T_TRANSDTL.TERMSEQNO
     * @mbggenerated Wed Jan 04 11:34:58 CST 2012
     */
    public void setTermseqno(Double termseqno) {
        this.termseqno = termseqno;
    }
}