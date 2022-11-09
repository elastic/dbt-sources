
with source as (

    select * from {{ source('raw_netsuite_sa', 'avarecalculatebatch_history') }}

),

renamed as (

    select
        avarecalculatebatch_id,
        _fivetran_deleted,
        _fivetran_synced,
        avarecalculatebatch_extid,
        avarecalculatebatch_name,
        batch_description,
        batch_name,
        customer_id,
        date_created,
        date_deleted,
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
        to_date,
        partition_date

    from source

)

select * from renamed
