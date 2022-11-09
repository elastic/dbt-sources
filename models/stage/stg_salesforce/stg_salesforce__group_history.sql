
with source as (

    select * from {{ source('raw_salesforce', 'group_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        developer_name,
        does_include_bosses,
        does_send_email_to_members,
        email,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        related_id,
        system_modstamp,
        type

    from source

)

select * from renamed
