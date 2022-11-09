
with source as (

    select * from {{ source('raw_salesforce', 'mlmodel_factor_component') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        factor_label_key,
        feature_type,
        feature_value,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        left_hand_derived_field,
        model_factor_id,
        model_id,
        name,
        operator,
        right_hand_derived_field,
        sort_order,
        system_modstamp,
        value

    from source

)

select * from renamed
