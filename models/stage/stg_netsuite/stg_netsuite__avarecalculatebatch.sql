
with source as (

    select * from {{ source('raw_netsuite', 'avarecalculatebatch') }}

),

renamed as (

    select
        avarecalculatebatch_extid,
        avarecalculatebatch_id,
        avarecalculatebatch_name,
        batch_description,
        batch_name,
        customer_id,
        date_created,
        from_date,
        is_inactive,
        last_modified_date,
        last_tran_id,
        parent_id,
        recalculation_status,
        recalculation_type,
        recordtypeall,
        recordtypecashrefund,
        recordtypecashsale,
        recordtypecreditmemo,
        recordtypeestimates,
        recordtypeinvoice,
        recordtypereturn_authorizatio,
        recordtypesalesorders,
        subsidiary_id,
        to_date

    from source

)

select * from renamed
