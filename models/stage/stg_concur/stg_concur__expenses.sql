
with source as (

    select * from {{ source('raw_concur', 'expenses') }}

),

renamed as (

    select
        uri,
        id,
        custom20,
        custom15,
        custom13,
        custom12,
        custom9,
        amountduecompanycard,
        custom6,
        receiptsreceived,
        orgunit3,
        custom5,
        custom18,
        orgunit1,
        custom4,
        custom3,
        approverloginid,
        custom1,
        name,
        approvername,
        orgunit6,
        custom7,
        custom14,
        countrysubdivision,
        orgunit5,
        hasexception,
        ledgername,
        ownername,
        amountdueemployee,
        policyid,
        lastcomment,
        paymentstatusname,
        orgunit2,
        submitdate,
        approvalstatusname,
        paymentstatuscode,
        custom10,
        totalapprovedamount,
        createdate,
        ownerloginid,
        custom19,
        workflowactionurl,
        total,
        custom17,
        personalamount,
        custom16,
        paiddate,
        lastmodifieddate,
        orgunit4,
        custom2,
        currencycode,
        eversentback,
        custom11,
        userdefineddate,
        country,
        totalclaimedamount,
        approvalstatuscode,
        custom8,
        processingpaymentdate,
        processedat,
        raw_json

    from source

)

select * from renamed
