
with source as (

    select * from {{ source('raw_salesforce', 'territory_2') }}

),

renamed as (

    select
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
        _fivetran_deleted,
        territory_geo_c,
        territory_level_5_c,
        territory_level_4_c,
        territory_tier_c,
        territory_sub_tier_c,
        territory_level_c,
        territory_segment_c,
        territory_level_3_c,
        territory_level_2_c,
        territory_category_c,
        territory_level_1_c

    from source

)

select * from renamed
