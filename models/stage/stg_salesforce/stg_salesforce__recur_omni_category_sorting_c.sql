
with source as (

    select * from {{ source('raw_salesforce', 'recur_omni_category_sorting_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        recur_omni_category_id_sorting_json_c,
        recur_omni_is_public_category_c,
        recur_omni_user_c,
        system_modstamp

    from source

)

select * from renamed
