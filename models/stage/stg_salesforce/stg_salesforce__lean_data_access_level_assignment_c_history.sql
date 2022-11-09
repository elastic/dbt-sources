
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_access_level_assignment_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        lean_data_access_type_c,
        lean_data_ld_business_unit_c,
        lean_data_round_robin_pool_c,
        lean_data_unique_name_c,
        lean_data_user_c

    from source

)

select * from renamed
