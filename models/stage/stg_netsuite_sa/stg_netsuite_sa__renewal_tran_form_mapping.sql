
with source as (

    select * from {{ source('raw_netsuite_sa', 'renewal_tran_form_mapping') }}

),

renamed as (

    select
        renewal_tran_form_mapping_id,
        _fivetran_deleted,
        _fivetran_synced,
        channel_tier_value_id,
        class_value_id,
        date_created,
        date_deleted,
        department_value_id,
        is_inactive,
        last_modified_date,
        location_value_id,
        mapping_based_on_id,
        parent_id,
        renewal_tran_form_mapping_exti,
        subsidiary_value,
        transaction_form_id,
        transaction_type_id,
        value_0

    from source

)

select * from renamed
