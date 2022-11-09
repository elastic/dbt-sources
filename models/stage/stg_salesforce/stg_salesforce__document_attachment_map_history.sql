
with source as (

    select * from {{ source('raw_salesforce', 'document_attachment_map_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        document_id,
        document_sequence,
        id,
        parent_id,
        _fivetran_deleted

    from source

)

select * from renamed
