
with source as (

    select * from {{ source('raw_netsuite', 'renewal_tran_form_mapping') }}

),

renamed as (

    select
        channel_tier_value_id,
        class_value_id,
        date_created,
        department_value_id,
        is_inactive,
        last_modified_date,
        location_value_id,
        mapping_based_on_id,
        parent_id,
        renewal_tran_form_mapping_exti,
        renewal_tran_form_mapping_id,
        subsidiary_value,
        transaction_form_id,
        transaction_type_id,
        value_0

    from source

)

select * from renamed
