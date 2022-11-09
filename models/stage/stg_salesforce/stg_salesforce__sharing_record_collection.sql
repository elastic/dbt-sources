
with source as (

    select * from {{ source('raw_salesforce', 'sharing_record_collection') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        group_id,
        is_deleted,
        last_added,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        number_of_records,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
