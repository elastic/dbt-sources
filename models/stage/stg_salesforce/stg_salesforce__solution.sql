
with source as (

    select * from {{ source('raw_salesforce', 'solution') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        is_html,
        is_published,
        is_published_in_public_kb,
        is_reviewed,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        owner_id,
        solution_name,
        solution_note,
        solution_number,
        status,
        system_modstamp,
        times_used

    from source

)

select * from renamed
