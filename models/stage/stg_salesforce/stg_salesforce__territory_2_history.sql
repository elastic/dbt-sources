
with source as (

    select * from {{ source('raw_salesforce', 'territory_2_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        account_access_level,
        case_access_level,
        contact_access_level,
        currency_iso_code,
        description,
        developer_name,
        last_modified_by_id,
        last_modified_date,
        name,
        opportunity_access_level,
        parent_territory_2_id,
        system_modstamp,
        territory_2_model_id,
        territory_2_type_id,
        territory_id_18_digit_c,
        forecast_user_id,
        territory_node_type_c_c,
        _fivetran_deleted

    from source

)

select * from renamed
