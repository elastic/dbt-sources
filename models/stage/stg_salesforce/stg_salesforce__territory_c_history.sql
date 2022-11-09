
with source as (

    select * from {{ source('raw_salesforce', 'territory_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        area_code_phone_c,
        city_c,
        country_c,
        created_by_id,
        created_date,
        currency_iso_code,
        default_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        re_evaluate_c,
        sales_rep_c,
        state_c,
        system_modstamp,
        territory_name_c,
        is_active_sales_rep_c

    from source

)

select * from renamed
