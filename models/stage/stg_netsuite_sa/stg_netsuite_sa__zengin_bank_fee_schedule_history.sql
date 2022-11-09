
with source as (

    select * from {{ source('raw_netsuite_sa', 'zengin_bank_fee_schedule_history') }}

),

renamed as (

    select
        zengin_bank_fee_schedule_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        matrix_value,
        parent_id,
        schedule_name,
        zengin_bank_fee_schedule_extid,
        partition_date

    from source

)

select * from renamed
