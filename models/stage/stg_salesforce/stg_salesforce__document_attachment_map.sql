
with source as (

    select * from {{ source('raw_salesforce', 'document_attachment_map') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        document_id,
        document_sequence,
        parent_id,
        _fivetran_deleted

    from source

)

select * from renamed
