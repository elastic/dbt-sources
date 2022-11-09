
with source as (

    select * from {{ source('raw_salesforce', 'case_comment_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        comment_body,
        created_by_id,
        created_date,
        is_deleted,
        is_published,
        last_modified_by_id,
        last_modified_date,
        parent_id,
        system_modstamp

    from source

)

select * from renamed
