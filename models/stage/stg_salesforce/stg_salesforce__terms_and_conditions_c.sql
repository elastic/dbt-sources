
with source as (

    select * from {{ source('raw_salesforce', 'terms_and_conditions_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        description_c,
        display_text_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        name_c,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
