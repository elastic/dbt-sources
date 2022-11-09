
with source as (

    select * from {{ source('raw_marketo', 'program') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        channel,
        created_at,
        description,
        end_date,
        name,
        sfdc_id,
        sfdc_name,
        start_date,
        status,
        type,
        updated_at,
        url,
        workspace,
        _fivetran_deleted

    from source

)

select * from renamed
