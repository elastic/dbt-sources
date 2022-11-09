
with source as (

    select * from {{ source('raw_netsuite', 'fam_final_period_convention') }}

),

renamed as (

    select
        date_created,
        fam_final_period_convention_ex,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
