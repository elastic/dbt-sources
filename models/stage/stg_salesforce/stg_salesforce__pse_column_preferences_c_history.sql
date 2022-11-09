
with source as (

    select * from {{ source('raw_salesforce', 'pse_column_preferences_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_field_c,
        pse_order_c,
        pse_value_c,
        pse_visible_c,
        pse_width_c,
        setup_owner_id,
        system_modstamp,
        owner_id,
        pse_feature_c,
        pse_user_c

    from source

)

select * from renamed
