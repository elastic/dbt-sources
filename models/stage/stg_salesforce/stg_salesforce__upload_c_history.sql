
with source as (

    select * from {{ source('raw_salesforce', 'upload_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        case_c,
        comment_id_c,
        created_by_id,
        created_date,
        currency_iso_code,
        file_hash_c,
        file_size_c,
        file_slug_c,
        file_type_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        token_c,
        upload_id_c,
        user_id_c,
        unique_id_c,
        last_referenced_date,
        last_viewed_date,
        analyzer_url_c

    from source

)

select * from renamed
