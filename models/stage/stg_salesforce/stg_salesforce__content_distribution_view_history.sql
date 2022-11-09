
with source as (

    select * from {{ source('raw_salesforce', 'content_distribution_view_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        distribution_id,
        is_deleted,
        is_download,
        is_internal,
        parent_view_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
