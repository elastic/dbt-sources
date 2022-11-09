
with source as (

    select * from {{ source('raw_netsuite', 'zengin_bank_fee_schedule') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        matrix_value,
        parent_id,
        schedule_name,
        zengin_bank_fee_schedule_extid,
        zengin_bank_fee_schedule_id

    from source

)

select * from renamed
