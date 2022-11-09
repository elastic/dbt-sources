
with source as (

    select * from {{ source('raw_netsuite', 'elastic_approval_rule_type') }}

),

renamed as (

    select
        date_created,
        elastic_approval_rule_type_ext,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
